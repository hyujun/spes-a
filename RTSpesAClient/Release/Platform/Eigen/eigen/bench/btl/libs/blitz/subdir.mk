################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/bench/btl/libs/blitz/btl_blitz.cpp \
../Platform/Eigen/eigen/bench/btl/libs/blitz/btl_tiny_blitz.cpp 

OBJS += \
./Platform/Eigen/eigen/bench/btl/libs/blitz/btl_blitz.o \
./Platform/Eigen/eigen/bench/btl/libs/blitz/btl_tiny_blitz.o 

CPP_DEPS += \
./Platform/Eigen/eigen/bench/btl/libs/blitz/btl_blitz.d \
./Platform/Eigen/eigen/bench/btl/libs/blitz/btl_tiny_blitz.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/bench/btl/libs/blitz/%.o: ../Platform/Eigen/eigen/bench/btl/libs/blitz/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


