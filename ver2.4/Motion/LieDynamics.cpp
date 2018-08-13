#include "LieDynamics.h"


// how to use
// 1. update_info
// 2. Prepare_Dynamics
// 3. M_Matrix, C_Matrix, G_Matrix

namespace HYUMotionDynamics{

Liedynamics::Liedynamics():isFirstRun(0)
{
	i.setIdentity();
}



Liedynamics::~Liedynamics()
{
}

void Liedynamics::UpdateDynamicInfo(Matrix3f inertia, float mass, int link_num)
{
	GIner[link_num - 1] = GeneralizedInertia(inertia, mass);
}



Matrix6f Liedynamics::GeneralizedInertia(Matrix3f inertia, float mass)
{
	Matrix6f G_iner;
	G_iner.setZero();
	G_iner.block<3, 3>(0, 0) = inertia;
	G_iner.block<3, 3>(3, 3) = mass*i;
	return G_iner;
}


Matrix6n6nf Liedynamics::Inertia_Link(void)
{
	Matrix6n6nf iner_link = Matrix6n6nf::Zero();
	for (int i = 0; i < ROBOT_DOF; ++i)
	{
		iner_link.block<6, 6>(6 * i, 6 * i) = GIner[i];
	}
	return iner_link;
}

Matrix6n6nf Liedynamics::Gamma_Link(void)
{
	Matrix6n6nf res = Matrix6n6nf::Zero();
	for (int i = 1; i < ROBOT_DOF; ++i)
	{
		res.block<6, 6>(6 * i, 6 * (i - 1)) = LieOperator::AdjointMatrix(LieOperator::inverse_SE3(T[i][i + 1]));
	}
	return res;
}

Matrix6n6nf Liedynamics::L_link(void)
{
	Matrix6n6nf res = Matrix6n6nf::Identity();

	for (int i = 1; i < ROBOT_DOF; ++i)
	{
		for(int j=i+1; j<= ROBOT_DOF; ++j)
		{
			res.block<6, 6>(6*(j-1) , 6*(i-1)) = LieOperator::AdjointMatrix(LieOperator::inverse_SE3(T[i][j]));
		}
	}

	return res;
}

Matrix6nnf Liedynamics::A_Link(void)
{
	Matrix6nnf res = Matrix6nnf::Zero();

	for (int i = 0; i < ROBOT_DOF; ++i)
	{
		res.block<6, 1>(6 * i,  i) = A[i+1];
	}
	return res;
}

Matrix6n6nf Liedynamics::ad_Aqdot_Link(Jointf qdot)
{
	Matrix6n6nf res = Matrix6n6nf::Zero();
	for (int i = 0; i < ROBOT_DOF; ++i)
	{
		res.block<6, 6>(6 * i, 6 * i) = LieOperator::adjointMatrix(A[i+1]*qdot(i));
	}
	return res;
}

Matrix6n6nf Liedynamics::ad_V_Link(Jointf qdot)
{
	Matrix6n6nf res = Matrix6n6nf::Zero();
	V = L_mat*A_mat*qdot;

	for (int i = 0; i < ROBOT_DOF; ++i)
	{
		res.block<6, 6>(6 * i, 6 * i) = LieOperator::adjointMatrix(V.segment(6 * i, 6));
	}
	
	return res;
}

Vector6nf Liedynamics::Vdot_base(int axis)
{
	Vector6nf res = Vector6nf::Zero();
	Vector6f res1 = Vector6f::Zero();
	switch (axis)
	{
	case _RotX:
		res1 << 0, 0, 0, gravity, 0, 0;
		res.head(6) =LieOperator::AdjointMatrix(LieOperator::inverse_SE3(T[0][1]))*res1;
		break;
	case _RotY:
		res1 << 0, 0, 0, 0, gravity, 0;
		res.head(6) =LieOperator::AdjointMatrix(LieOperator::inverse_SE3(T[0][1]))*res1;
		break;
	case _RotZ:
		res1 << 0, 0, 0, 0, 0, gravity;
		res.head(6) =LieOperator::AdjointMatrix(LieOperator::inverse_SE3(T[0][1]))*res1;
		break;
	default:
		break;
	}	
	return res;
}

void Liedynamics::Prepare_Dynamics(Jointf q, Jointf qdot)
{
	if(isFirstRun == 0)
	{
		Iner_mat = Inertia_Link();
		A_mat = A_Link();
		isFirstRun = 1;
	}

	PoEKinematics::HTransMatrix(q);
	Gamma_mat = Gamma_Link();
	L_mat = L_link();
	ad_Aqd = ad_Aqdot_Link(qdot);
	ad_V = ad_V_Link(qdot);
	LA_mat = L_mat*A_mat;
}

Matrix6f Liedynamics::M_Matrix(void)
{
	return LA_mat.transpose()*Iner_mat*LA_mat;
}

Matrix6f Liedynamics::C_Matrix(void)
{
	return LA_mat.transpose()*(Iner_mat*L_mat*ad_Aqd*Gamma_mat - ad_V.transpose()*Iner_mat)*LA_mat;
}

Vector6f Liedynamics::G_Matrix(void)
{
	return LA_mat.transpose()*Iner_mat*L_mat*Vdot_base(_RotZ);
}

}
