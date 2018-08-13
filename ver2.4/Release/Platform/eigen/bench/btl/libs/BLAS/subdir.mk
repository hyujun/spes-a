################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/bench/btl/libs/BLAS/main.cpp 

OBJS += \
./Platform/eigen/bench/btl/libs/BLAS/main.o 

CPP_DEPS += \
./Platform/eigen/bench/btl/libs/BLAS/main.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/bench/btl/libs/BLAS/%.o: ../Platform/eigen/bench/btl/libs/BLAS/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


