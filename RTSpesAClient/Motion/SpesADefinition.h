#pragma once


#define ROBOT_DOF 6


// LEFT ARM

#define BASE_Y 0.016
#define BASE_Z 0.908

#define LINK_12 0.079
#define LINK_23	0.12
#define LINK_34 0.09
#define LINK_45 0.065
#define LINK_56 0.15
#define LINK_6e 0.008

#define MASS_1 0.823
#define MASS_2 1.437
#define MASS_3 0.9
#define MASS_4 0.11
#define MASS_5 0.781
#define MASS_6 0.053

#define MASS_MOTOR_1 0.34
#define MASS_MOTOR_2 0.34
#define MASS_MOTOR_3 0.26
#define MASS_MOTOR_4 0.21
#define MASS_MOTOR_5 0.114
#define MASS_MOTOR_6 0.114

#define J_Ixx_1 9.055e-4
#define J_Ixy_1 0
#define J_Ixz_1 0
#define J_Iyy_1 8.06e-4
#define J_Iyz_1 0
#define J_Izz_1 1.063e-3

#define J_Ixx_2 4.986e-3
#define J_Ixy_2 0
#define J_Ixz_2 0
#define J_Iyy_2 5.33e-3
#define J_Iyz_2 0
#define J_Izz_2 9.316e-4

#define J_Ixx_3 1.295e-3
#define J_Ixy_3 0
#define J_Ixz_3 0
#define J_Iyy_3 1.137e-3
#define J_Iyz_3 0
#define J_Izz_3 5.721e-4

#define J_Ixx_4 6.197e-5
#define J_Ixy_4 0
#define J_Ixz_4 0
#define J_Iyy_4 2.711e-5
#define J_Iyz_4 0
#define J_Izz_4 6.432e-5

#define J_Ixx_5 2.866e-3
#define J_Ixy_5 0
#define J_Ixz_5 0
#define J_Iyy_5 2.924e-3
#define J_Iyz_5 0
#define J_Izz_5 2.37e-4

#define J_Ixx_6 1.728e-5
#define J_Ixy_6 0
#define J_Ixz_6 0
#define J_Iyy_6 7.076e-6
#define J_Iyz_6 0
#define J_Izz_6 1.749e-5

#define HARMONIC_120 120
#define HARMONIC_100 100
#define HARMONIC_50 50
#define ENC_1024 1024
#define ENC_1000 1000
#define ENC_512 512

#define MAX_CURRENT_1 1.78
#define MAX_CURRENT_2 1.78
#define MAX_CURRENT_3 1.74
#define MAX_CURRENT_4 2.82
#define MAX_CURRENT_5 0.56
#define MAX_CURRENT_6 0.56

#define TORQUE_CONST_1 0.0622 //Nm/A
#define TORQUE_CONST_2 0.0622
#define TORQUE_CONST_3 0.0538
#define TORQUE_CONST_4 0.0255
#define TORQUE_CONST_5 0.0698
#define TORQUE_CONST_6 0.0698

#define EFFICIENCY 70.0
