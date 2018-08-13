/*
 * Kinematics.h
 *
 *  Created on: Aug 7, 2018
 *      Author: spec
 */

#ifndef POEKINEMATICS_H_
#define POEKINEMATICS_H_

#include <cmath>
#include <Eigen/Dense>

#include "LieOperator.h"
#include "SpesADefinition.h"

using namespace Eigen;

typedef Matrix<float, 6, 1> Jointf;
typedef Matrix<float, 6, 6> Matrix6f;

namespace HYUMotionKinematics {

class PoEKinematics : public HYUMotionBase::LieOperator {
public:
	PoEKinematics();
	PoEKinematics(int DoF);
	virtual ~PoEKinematics();

public:
	void UpdateKinematicInfo(Vector3f _w, Vector3f _p, Vector3f _l, int _link_num);
	Vector3f GetV(Vector3f _w, Vector3f _p);
	SE3 GetM(Vector3f _link);
	se3 GetTwist(Vector3f _w, Vector3f _v);
	void HTransMatrix(Jointf q);

	Matrix6f SpaceJacobian(void);
	Matrix6f BodyJacobian(void);
	Matrix<float, 3, 6> AnalyticJacobian(void);
	Vector3f ForwardKinematics(void);

private:
	int RobotDoF;
	Matrix6f Jacobian;
	Matrix6f _SpaceJacobian;
	Matrix6f _BodyJacobian;
	Matrix<float, 3, 6> _AnalyticJacobian;

protected:
	SE3 T[ROBOT_DOF+1][ROBOT_DOF+1];
	SE3 M[ROBOT_DOF+1];
	SE3 _M[ROBOT_DOF+1][ROBOT_DOF+1];
	SE3 Exp_S[ROBOT_DOF+1];

	se3 A[ROBOT_DOF+1];
	se3 v_se3[ROBOT_DOF+1];

	int isInfoUpdated;
};

} /* namespace HYUSpesA */

#endif /* POEKINEMATICS_H_ */
