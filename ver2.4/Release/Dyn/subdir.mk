################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Dyn/Liedynamics.cpp \
../Dyn/robot.cpp 

OBJS += \
./Dyn/Liedynamics.o \
./Dyn/robot.o 

CPP_DEPS += \
./Dyn/Liedynamics.d \
./Dyn/robot.d 


# Each subdirectory must supply rules for building sources it contributes
Dyn/%.o: ../Dyn/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++1y -I/usr/xenomai/include -I/usr/3rdparty/eigen -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


