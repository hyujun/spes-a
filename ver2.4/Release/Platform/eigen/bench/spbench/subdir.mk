################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/bench/spbench/sp_solver.cpp \
../Platform/eigen/bench/spbench/spbenchsolver.cpp \
../Platform/eigen/bench/spbench/test_sparseLU.cpp 

OBJS += \
./Platform/eigen/bench/spbench/sp_solver.o \
./Platform/eigen/bench/spbench/spbenchsolver.o \
./Platform/eigen/bench/spbench/test_sparseLU.o 

CPP_DEPS += \
./Platform/eigen/bench/spbench/sp_solver.d \
./Platform/eigen/bench/spbench/spbenchsolver.d \
./Platform/eigen/bench/spbench/test_sparseLU.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/bench/spbench/%.o: ../Platform/eigen/bench/spbench/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


