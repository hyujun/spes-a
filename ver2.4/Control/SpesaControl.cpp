/*
 * SpesaControl.cpp
 *
 *  Created on: Jan 25, 2018
 *      Author: spec
 */

#include "SpesaControl.h"

SpesaControl::SpesaControl():count(0), isProofFirst(0)
{
	p_tmp.setZero();
	arg_dot.setZero();
	Stiff << 20, 20, 20, 20, 20, 20;
	Damp << 3, 3, 3, 3, 3, 3;

}

SpesaControl::~SpesaControl() {
}

void SpesaControl::Define_Error(state *actual, state *desired)
{
	e = desired->q - actual->q;
	e_dot = desired->q_dot - actual->q_dot;
	e_int.noalias() += e*actual->s_time;
}


void SpesaControl::PD_gravity(state *act, state *des, Jointf &out)
{
	Define_Error(act, des);
	out = Kp.cwiseProduct(e) + Kd.cwiseProduct(e_dot) + Liedynamics::G_Matrix();
}

void SpesaControl::PD_Joint_Impedance(state *act, state *des, Jointf &out)
{
	Define_Error(act, des);
	u0 = des->q_ddot + Liedynamics::M_Matrix().inverse()*(Damp.cwiseProduct(e_dot) + Stiff.cwiseProduct(e));

	out = Liedynamics::M_Matrix()*u0 + Liedynamics::C_Matrix()*act->q_dot + Liedynamics::G_Matrix();
	//out = M_Matrix()*u0 + C_Matrix()*act->q_dot + G_Matrix() + Kp.cwiseProduct(e) + Ki.cwiseProduct(e_int);
}

void SpesaControl::DynamicProof(state *act, state *des, Jointf &out)
{
	M_mat_p = M_mat;
	M_mat = Liedynamics::M_Matrix();
	C_mat = Liedynamics::C_Matrix();
	M_dot_mat = (M_mat - M_mat_p)/act->s_time - 2*C_mat;
	//M_dot_mat = (M_mat - M_mat_p)/act->s_time - C_mat - C_mat.transpose();
	if(count >= 80)
	{
		//std::cout <<"\n"<< act->q_dot.transpose()*M_dot_mat*act->q_dot << "\n" << std::endl;
		//std::cout <<"\n"<< M_dot_mat << "\n" << std::endl;
		//std::cout <<"\n"<< G_Matrix() << "\n" << std::endl;
		//std::cout <<"\n"<< M_mat << "\n" << std::endl;
		//std::cout <<"\n"<< C_mat << "\n" << std::endl;
		//std::cout <<"\n"<< act->s_time << "\n" << std::endl;
		count = 0;
	}
	else
		count++;

}

void SpesaControl::JacobianProof(state *act)
{
	if(isProofFirst == 0)
	{
		x_est.setZero();
		x_est = PoEKinematics::ForwardKinematics();
		x_real = PoEKinematics::ForwardKinematics();
		isProofFirst = 1;
	}
	else
	{
		act->x_dot.tail(3) = PoEKinematics::AnalyticJacobian()*act->q_dot;
		x_est += act->x_dot.tail(3)*act->s_time;
		x_real = PoEKinematics::ForwardKinematics();
	}

	if(count >= 80)
	{
		//cout << act->q << "\n" << endl;
		//cout << x_real << "\n" << endl;
		//cout << x_est - x_real << "\n" << endl;
		//cout << act->x_dot.head(3) << "\n" << endl;
		//cout << act->q_dot << "\n" << endl;
		//cout << act->x_dot << "\n" << endl;
		//cout << act->s_time << "\n" << endl;
		//cout << AnalyticJacobian() << "\n" << endl;
	}
	else
		count++;
}

void SpesaControl::Set_ControlGain(unsigned char type)
{
	float DEFAULT_KP = 5;
	float DEFAULT_KD = 0.7;
	float DEFAULT_KI = 20;
	switch(type)
	{
	case 1:
		Kp << DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP;
		Kd << DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD;
		Ki << DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI;
		break;
	default:
		Kp << DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP,DEFAULT_KP;
		Kd << DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD,DEFAULT_KD;
		Ki << DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI,DEFAULT_KI;
		break;
	}

}
