/*
 * RTSpecMainClient.h
 *
 *  Created on: Aug 2, 2018
 *      Author: root
 */

#ifndef RTSPECMAINCLIENT_H_
#define RTSPECMAINCLIENT_H_


#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <errno.h>
#include <termios.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#include <rtdk.h>
#include <native/task.h>
#include <native/queue.h>
#include <native/timer.h>

#include "../Can/ElmoCiA402.h"
#include "../Control/SpesaControl.h"

#include <iostream>
#include <fstream>

using namespace std;

#define PRINT_TIME 1
#define S_TIME 2500//us

typedef struct TIME_STRUCT{
	RTIME time_point[5];

	float dt;
	float control_dt;
	float worst_dt;
	float sys_time;
}TimeStruct;



typedef struct JOINT_INFO{

	int aq_inc[6];
	int atoq_per[6];
	short dtor_per[6];

	int statusword[6];

	STATE act;
	STATE des;
	MOTOR_INFO motor;
	TimeStruct time;
}JointInfo;

#endif /* RTSPECMAINCLIENT_H_ */
