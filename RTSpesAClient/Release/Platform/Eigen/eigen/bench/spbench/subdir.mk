################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/bench/spbench/sp_solver.cpp \
../Platform/Eigen/eigen/bench/spbench/spbenchsolver.cpp \
../Platform/Eigen/eigen/bench/spbench/test_sparseLU.cpp 

OBJS += \
./Platform/Eigen/eigen/bench/spbench/sp_solver.o \
./Platform/Eigen/eigen/bench/spbench/spbenchsolver.o \
./Platform/Eigen/eigen/bench/spbench/test_sparseLU.o 

CPP_DEPS += \
./Platform/Eigen/eigen/bench/spbench/sp_solver.d \
./Platform/Eigen/eigen/bench/spbench/spbenchsolver.d \
./Platform/Eigen/eigen/bench/spbench/test_sparseLU.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/bench/spbench/%.o: ../Platform/Eigen/eigen/bench/spbench/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


