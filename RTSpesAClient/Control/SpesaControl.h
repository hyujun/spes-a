/*
 * SpesaControl.h
 *
 *  Created on: Jan 25, 2018
 *      Author: spec
 */

#ifndef SPESACONTROL_H_
#define SPESACONTROL_H_

#include <stdio.h>
#include "../Motion/robot.h"

#define GAIN_DEFAULT 1
#define uS 1000000


#define P_CTRL 0x001
#define PD_CTRL 0x002
#define PID_CTRL 0x003

#define GRAVITY 0x010
#define IMPEDANCE 0x020

#define JOINT 0x100
#define TASK 0x200

#define RadTODeg 180/M_PI
#define DegTORad M_PI/180

class SpesaControl : public robot
{
public:
	SpesaControl();
	virtual ~SpesaControl();

public:
	void Define_Error(state *actual, state *desired);
	void PD_gravity(state *act, state *des, Jointf &out);
	void PD_Joint_Impedance(state *act, state *des, Jointf &out);

	void DynamicProof(state *act, state *des, Jointf &out);
	void JacobianProof(state *act);

public:
	void Set_ControlGain(unsigned char type);

private:

	Jointf Kp, Kd, Ki;
	Jointf e, e_dot, e_int;
	Jointf u0;
	Jointf p_tmp, arg_dot;
	Jointf Damp, Stiff;

private:
	int count;
	Matrix6f M_mat, M_mat_p, M_dot_mat;
	Matrix6f C_mat;

private:
	Matrix6f Jacobian;
	Vector3f x_est, x_real;
	int isProofFirst;

};

#endif /* SPESACONTROL_H_ */
