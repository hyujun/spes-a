/*
 * Kinematics.cpp
 *
 *  Created on: Aug 7, 2018
 *      Author: spec
 */

#include "PoEKinematics.h"

namespace HYUMotionKinematics {

PoEKinematics::PoEKinematics()
{
	isInfoUpdated = 0;
	RobotDoF = 6;
}

PoEKinematics::PoEKinematics(int DoF)
:isInfoUpdated(0)
{
	RobotDoF = DoF;
}

PoEKinematics::~PoEKinematics() {
}

void PoEKinematics::UpdateKinematicInfo(Vector3f _w, Vector3f _p, Vector3f _l, int _link_num)
{

	M[0] << 1, 0, 0, 0,
			0, 1, 0, 0.016,
			0, 0, 1, 0.855,
			0, 0, 0, 1;

	_M[_link_num - 1][_link_num] = this->GetM(_l);
	v_se3[_link_num - 1] = this->GetTwist(_w, this->GetV(_w, _p));

	if(_link_num == 1){
		M[_link_num] = _M[_link_num-1][_link_num];
	}
	else{
		M[_link_num] = M[_link_num-1]*_M[_link_num-1][_link_num];
	}

	A[_link_num] = AdjointMatrix(inverse_SE3(M[_link_num]))*v_se3[_link_num-1];

	isInfoUpdated = 1;
}

Vector3f PoEKinematics::GetV(Vector3f _w, Vector3f _p)
{
	return (-SkewMatrix(_w))*_p;
}

SE3 PoEKinematics::GetM(Vector3f _link)
{
	SE3 res;
	res.setIdentity();
	res.block<3, 1>(0, 3) = _link;
	return res;
}

se3 PoEKinematics::GetTwist(Vector3f _w, Vector3f _v)
{
	se3 twist;

	twist.head(3) = _w;
	twist.tail(3) = _v;

	return twist;
}

void PoEKinematics::HTransMatrix(Jointf q)
{
	for (int end = 1; end <= ROBOT_DOF; ++end){
		Exp_S[end-1] = SE3Matrix(v_se3[end-1], q(end-1));
	}
/*
	T[0][1] = M[0]*Exp_S[0]*M[1];
	T[0][2] = M[0]*Exp_S[0]*Exp_S[1]*M[2];
	T[0][3] = M[0]*Exp_S[0]*Exp_S[1]*Exp_S[2]*M[3];
	T[0][4] = M[0]*Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*M[4];
	T[0][5] = M[0]*Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*Exp_S[4]*M[5];
	T[0][6] = M[0]*Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*Exp_S[4]*Exp_S[5]*M[6];
	*/
	T[0][1] = Exp_S[0]*M[1];
	T[0][2] = Exp_S[0]*Exp_S[1]*M[2];
	T[0][3] = Exp_S[0]*Exp_S[1]*Exp_S[2]*M[3];
	T[0][4] = Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*M[4];
	T[0][5] = Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*Exp_S[4]*M[5];
	T[0][6] = Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*Exp_S[4]*Exp_S[5]*M[6];

	//int _num = 2;
	//cout << T[0][_num] << "\n" << endl;

	for(int i=1; i<ROBOT_DOF; ++i){
		for(int j=i+1; j<=ROBOT_DOF;++j)
			T[i][j] = inverse_SE3(T[0][i])*T[0][j];
	}
}

Matrix6f PoEKinematics::SpaceJacobian(void)
{
	Jacobian.setZero();

	Jacobian.block<6,1>(0,0) = v_se3[0];

	Jacobian.block<6,1>(0,1) = AdjointMatrix(Exp_S[0])*v_se3[1];

	Jacobian.block<6,1>(0,2) = AdjointMatrix(Exp_S[0]*Exp_S[1])*v_se3[2];

	Jacobian.block<6,1>(0,3) = AdjointMatrix(Exp_S[0]*Exp_S[1]*Exp_S[2])*v_se3[3];

	Jacobian.block<6,1>(0,4) = AdjointMatrix(Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3])*v_se3[4];

	Jacobian.block<6,1>(0,5) = AdjointMatrix(Exp_S[0]*Exp_S[1]*Exp_S[2]*Exp_S[3]*Exp_S[4])*v_se3[5];

	return Jacobian;
}

Matrix6f PoEKinematics::BodyJacobian(void)
{
	_SpaceJacobian = SpaceJacobian();
	_BodyJacobian = AdjointMatrix(inverse_SE3(T[0][ROBOT_DOF]))*_SpaceJacobian;
	return _BodyJacobian;
}

Matrix<float, 3, 6> PoEKinematics::AnalyticJacobian(void)
{
	_AnalyticJacobian = T[0][ROBOT_DOF].block<3,3>(0,0)*BodyJacobian().block<3,6>(3,0);
	return _AnalyticJacobian;
}

Vector3f PoEKinematics::ForwardKinematics(void)
{
	return T[0][ROBOT_DOF].block<3,1>(0,3);
}

} /* namespace HYUSpesA */
