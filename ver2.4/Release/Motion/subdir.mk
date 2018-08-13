################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Motion/LieDynamics.cpp \
../Motion/LieOperator.cpp \
../Motion/PoEKinematics.cpp \
../Motion/robot.cpp 

OBJS += \
./Motion/LieDynamics.o \
./Motion/LieOperator.o \
./Motion/PoEKinematics.o \
./Motion/robot.o 

CPP_DEPS += \
./Motion/LieDynamics.d \
./Motion/LieOperator.d \
./Motion/PoEKinematics.d \
./Motion/robot.d 


# Each subdirectory must supply rules for building sources it contributes
Motion/%.o: ../Motion/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I/usr/3rdparty/eigen -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


