################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Can/ElmoCiA402.cpp \
../Can/rtcan_base.cpp 

OBJS += \
./Can/ElmoCiA402.o \
./Can/rtcan_base.o 

CPP_DEPS += \
./Can/ElmoCiA402.d \
./Can/rtcan_base.d 


# Each subdirectory must supply rules for building sources it contributes
Can/%.o: ../Can/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I/usr/3rdparty/eigen -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


