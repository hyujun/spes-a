//============================================================================
// Name        : RTSpecMainClient.cpp
// Author      : junho park
// Version     :
// Copyright   : Your copyright notice
//============================================================================



#include "RTSpecMainClient.h"

RT_TASK LEFT_TASK, RIGHT_TASK;
RT_TASK PRINT_TASK;
RT_QUEUE msg_print;

Elmo_CiA402 can0, can1;
char canname1[20] = "rtcan1"; //right arm
char canname0[20] = "rtcan0"; //left arm
static int arg_exit = 0;


void catch_signal(int sig)
{
	arg_exit = 1;
	sleep(2);

    rt_task_delete(&LEFT_TASK);
    //rt_task_delete(&RIGHT_TASK);

    rt_printf(">> RTSpecMainClient System Stopped <<\n\n");
    exit(0);
}


/* NOTE: error handling omitted. */
void LEFT(void *arg)
{
	void *msg;
	float print_count = 0;
	JointInfo info;
	memset(&info, 0, sizeof(JointInfo));

	info.act.s_time = S_TIME*1e-6;

	SpesaControl *Control = new SpesaControl;
	Control->Set_ControlGain(GAIN_DEFAULT);
	Control->robot_update();
	Control->motor_update(&info.motor);

	can0.activate_all(canname0);

	for(int i=1; i<=6; ++i)
		info.motor.rate_current[i-1] = ((float)can0.SDO_RATE_CURRENT(i))/1000.0f;

	rt_printf("\n--Left Arm Thread Start!\n");
	rt_printf("--Left Arm Thread Sampling Time: %0.1f ms, %0.1f hz\n", S_TIME/1000.0, 1000000.0/S_TIME);

	rt_task_set_periodic(NULL, TM_NOW, S_TIME*1000);
	info.time.time_point[0]  = rt_timer_read();

	while (1)
	{
		////
		//deactivate the elmo & rtcan
		if(arg_exit)
		{
			can0.deactivate_all();
			delete Control;
			sleep(2);
		}

		info.time.time_point[1]  = rt_timer_read();

		can0.Elmo_STATE(info.statusword, info.atoq_per, info.aq_inc);

		Control->ENCtoRAD(info.aq_inc, info.act.q, info.act.q_dot, info.act.s_time);
		Control->Prepare_Dynamics(info.act.q, info.act.q_dot);
		///////////////////////////////////////////////
		// control algorithm
		info.des.q << 0, -M_PI/2, 0, M_PI, 0, M_PI;  //rad
		info.des.q_dot << 0, 0, 0, 0, 0, 0;
		info.des.q_ddot << 0, 0, 0, 0, 0, 0;
		//des_state.q_dot.setZero();

		//info.des.torque = Control->G_Matrix();
		//Control->PD_Joint_Impedance(&info.act, &info.des, info.des.torque);
		//Control->DynamicProof(&info.act, &info.des, info.des.torque);
		Control->JacobianProof(&info.act);
		///////////////////////////////////////////////

		Control->ELMO_OUTPUT(&info.motor, info.des.torque, info.dtor_per);

		for(int i=6; i>=1; --i)
		{
			//can0.RPDO2_SEND(i, info.dtor_per[i-1]);
			can0.RPDO2_SEND(i, 0);
		}

		info.time.time_point[0]  = info.time.time_point[2] ;
		info.time.time_point[2] = rt_timer_read();


		//TIME CALCULATION
		info.time.dt = ((float)(info.time.time_point[2] -info.time.time_point[0] ))*1e-9;
		info.time.control_dt = ((float)(info.time.time_point[2] -info.time.time_point[1] ))*1e-9;
		if(info.time.worst_dt <= info.time.control_dt)
			info.time.worst_dt = info.time.control_dt;

		info.time.sys_time += info.time.dt;

		// SEND THE MESSAGE QUEUE
		if(print_count >= roundf(1/(S_TIME*1e-6)))	{

			msg = rt_queue_alloc(&msg_print, sizeof(JointInfo));
			if(msg == NULL)
				rt_printf("rt_queue_alloc failed to allocate, NULL pointer received\n");
			memcpy(msg, &info, sizeof(JointInfo));
			rt_queue_send(&msg_print, msg, sizeof(JointInfo), Q_NORMAL);
			print_count = 1;
		}
		else{
			if(print_count == 0)
			{
				info.time.control_dt=0;
				info.time.worst_dt = 0;
				info.time.sys_time = 0;
			}
			print_count++;
		}
		rt_task_wait_period(NULL);
	}
}



void RIGHT(void *arg)
{
	Vector6f toq;
	Vector6f G;
	int q_enc[6], qdot_enc[6], elmo_current[6], status[6];

	state act_state, des_state;

	SpesaControl *Control = new SpesaControl;
	Control->Set_ControlGain(GAIN_DEFAULT);

	robot *R_arm = new robot;
	R_arm->robot_update_R();

	can1.sock = can1.rtsock_init(canname1);

	for(int i=1; i<=6; ++i)
	{
		for(int j=1; j<4; ++j)
			can1.PDO_STOP(i, j);
		//can1.PDO_MAPPING_2_1(i);
		can1.PDO_MAPPING_3(i);
		can1.RPDO2_MAPPING(i, OBJ_TARGET_TORQUE);

		can1.elmo_activate(i);
		can1.SDO_MODES_OPERTAION(i, OBJ_WRITE, TORQUE_MODE);
	}

	can1.NMT_STATE(0, NMT_START_NODE);

	rt_task_set_periodic(NULL, TM_NOW, S_TIME*1000);
	while (1)
	{
		rt_task_wait_period(NULL);

		////
		//deactivate the elmo & rtcan
		if(arg_exit)
		{

		    for(int i=1; i<=6; ++i)
		    	can1.elmo_deactivate(i);

		    can1.deactivate();

			delete R_arm;
			delete Control;
			sleep(2);
			break;
		}
		////

		can1.SYNC();
		for(int i=0; i<6;++i)
		{
			//can0.TPDO2_READ(q_enc, qdot_enc);
			can1.TPDO2_READ(status, elmo_current, q_enc);
		}

		R_arm->ENCtoRAD_R(q_enc, act_state.q);
		R_arm->ENCtoRAD_R(qdot_enc, act_state.q_dot);
		R_arm->Prepare_Dynamics(act_state.q, act_state.q_dot);

		///////////////////////////////////////////////
		// control algorithm
		des_state.q << 0, 0, 0, 0, 0, 0;

		toq = R_arm->G_Matrix();
		des_state.q << -0.7, M_PI/2, 0, 0, 0, 0;
		des_state.q_dot.setZero();

		//toq = L_arm->G_Matrix();
		//Control->PD_Joint_Impedance(R_arm, &act_state, &des_state, toq);
		///////////////////////////////////////////////

		//R_arm->ELMO_OUTPUT_R(toq, elmo_out);

		for(int i=6; i>=1; --i)
		{
			//can1.RPDO2_SEND(i, elmo_out[i-1]);
			can1.RPDO2_SEND(i, 0);
		}

	}
}

void Print_Task_Proc(void *arg)
{
	ssize_t len;
	void *msg;
	JointInfo info;
	memset(&info, 0, sizeof(JointInfo));

	RTIME p1=0;
	RTIME p2=0;;

	int err = rt_queue_bind(&msg_print, "PRINT_QUEUE", TM_INFINITE);
	if(err)
		fprintf(stderr, "Failed to Queue Bind, code %d\n", err);

	while((len = rt_queue_receive(&msg_print, &msg, TM_INFINITE)) > 0)
	{

		rt_print_flush_buffers();
		p1 = rt_timer_read();
		memcpy(&info, msg, sizeof(JointInfo));
		rt_printf("\nGlobal Time:[%0.1f sec]\n", info.time.sys_time);
		rt_printf("Task: [%0.3f]ms, Control: [%0.3f]ms, Worst: [%0.3f]ms\n",
				info.time.dt*1000, info.time.control_dt*1000, info.time.worst_dt*1000);
		for(int i=1; i<=6; ++i)
		{
			info.act.torque(i-1) = (float)info.atoq_per[i-1]/1000.0*info.motor.rate_current[i-1]*info.motor.toq_const[i-1];
			rt_printf("Joint %d: status:[0x%04x] Pos:%0.2frad, Vel:%0.2frad/s Toq: %0.3fNm, ElmoInput: %d\n",
					i, info.statusword[i-1], info.act.q(i-1), info.act.q_dot(i-1), info.act.torque(i-1), info.dtor_per[i-1]);
			//rt_printf("Joint %d: status:[0x%04x] Pos:%0.2frad, Vel:%0.2frad/s ElmoOutput: %d, ElmoInput: %d\n",
			//		i, info.statusword[i-1], info.act.q(i-1), info.act.q_dot(i-1), info.atoq_per[i-1], info.dtor_per[i-1]);
		}
		p2 = rt_timer_read();
		rt_printf("Received Message > len=%d bytes, ptr=%p\n", len, msg);
		rt_printf("Print Task Time:[%0.1f]us\n", ((float)(p2 -p1))*1e-3);
		rt_queue_free(&msg_print, msg);
	}
}

int main(int argc, char* argv[])
{
        signal(SIGTERM, catch_signal);
        signal(SIGINT, catch_signal);

        rt_print_auto_init(1);
        /* Avoids memory swapping for this program */
        mlockall(MCL_CURRENT|MCL_FUTURE);

        int res = rt_queue_create(&msg_print, "PRINT_QUEUE", sizeof(JointInfo)*4, 4, Q_FIFO | Q_SHARED);
        if(res < 0){
        	rt_printf("RT_Queue Create Failed: %d\n", res);
        	return 1;
        }

        rt_task_create(&LEFT_TASK, "left-arm", 0, 98, T_FPU|T_CPU(2));
        //rt_task_create(&RIGHT_TASK, "right-arm", 100*1024, 94, T_FPU);


        rt_task_start(&LEFT_TASK, &LEFT, NULL);
        //rt_task_start(&RIGHT_TASK, &RIGHT, NULL);

        rt_task_create(&PRINT_TASK, "PRINT_TASK", 0, 70, T_FPU|T_CPU(3));
        rt_task_start(&PRINT_TASK, &Print_Task_Proc, NULL);

        pause();
        return 0;
}

