/*
 * robot.h
 *
 *  Created on: Oct 23, 2017
 *      Author: root
 */

#ifndef ROBOT_H_
#define ROBOT_H_

#include <cmath>

#include "LieDynamics.h"
#include "SpesADefinition.h"

#define ROBOT_DOF 6
#define LEFT_ARM 0
#define RIGHT_ARM 1
#define MAX_CURRENT_ELMO 1200

typedef Matrix<float, 6, 1> Jointf;
typedef Matrix<float, 6, 1> Taskf;
typedef Matrix<float, 3, 1> Cartecianf;
typedef Matrix<float, 3, 1> Orientationf;
typedef Matrix<float, 3, 1> Axisf;
typedef Matrix<Vector3f, 6, 1> Axisv;
typedef Matrix<Matrix3f, 6, 1> Axism;

typedef struct MOTOR_INFO{
	float toq_const[6];
	float gear_ratio[6];
	float rate_current[6];
}MotorInfo;

#define sign(a) (((a)<0) ? -1 : ((a)>0))

typedef struct STATE{
	Jointf q;
	Jointf q_dot;
	Jointf q_ddot;
	Jointf torque;

	Taskf x;
	Taskf x_dot;
	Taskf x_ddot;
	float s_time;
}state;


class robot : public HYUMotionDynamics::Liedynamics
{
public:
	robot();
	virtual ~robot();

protected:
    Vector3f w[6], p[6], L[6];
    Matrix3f inertia[6];
    float mass[6];

public:

	void robot_update(void);
	void motor_update(MOTOR_INFO *motor);
	void ENCtoRAD(int *enc, Jointf& q);
	void ENCtoRAD(int *enc, Jointf& q, Jointf& q_dot, float s_time);
	void ELMO_OUTPUT(MOTOR_INFO *motor, Jointf& torque, short *output);

	void robot_update_R(void);
	void ENCtoRAD_R(int *enc, Jointf& q);
	void ELMO_OUTPUT_R(MOTOR_INFO *motor, Jointf& torque, short *output);

private:
	Jointf q_p;
};

#endif /* ROBOT_H_ */
