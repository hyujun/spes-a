################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../Platform/Eigen/eigen/bench/btl/data/mean.cxx \
../Platform/Eigen/eigen/bench/btl/data/regularize.cxx \
../Platform/Eigen/eigen/bench/btl/data/smooth.cxx 

CXX_DEPS += \
./Platform/Eigen/eigen/bench/btl/data/mean.d \
./Platform/Eigen/eigen/bench/btl/data/regularize.d \
./Platform/Eigen/eigen/bench/btl/data/smooth.d 

OBJS += \
./Platform/Eigen/eigen/bench/btl/data/mean.o \
./Platform/Eigen/eigen/bench/btl/data/regularize.o \
./Platform/Eigen/eigen/bench/btl/data/smooth.o 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/bench/btl/data/%.o: ../Platform/Eigen/eigen/bench/btl/data/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


