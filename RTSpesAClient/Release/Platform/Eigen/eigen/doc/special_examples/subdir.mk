################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example.cpp \
../Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example_details.cpp 

OBJS += \
./Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example.o \
./Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example_details.o 

CPP_DEPS += \
./Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example.d \
./Platform/Eigen/eigen/doc/special_examples/Tutorial_sparse_example_details.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/doc/special_examples/%.o: ../Platform/Eigen/eigen/doc/special_examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


