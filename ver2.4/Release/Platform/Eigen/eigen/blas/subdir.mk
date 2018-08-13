################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/blas/complex_double.cpp \
../Platform/Eigen/eigen/blas/complex_single.cpp \
../Platform/Eigen/eigen/blas/double.cpp \
../Platform/Eigen/eigen/blas/single.cpp \
../Platform/Eigen/eigen/blas/xerbla.cpp 

OBJS += \
./Platform/Eigen/eigen/blas/complex_double.o \
./Platform/Eigen/eigen/blas/complex_single.o \
./Platform/Eigen/eigen/blas/double.o \
./Platform/Eigen/eigen/blas/single.o \
./Platform/Eigen/eigen/blas/xerbla.o 

CPP_DEPS += \
./Platform/Eigen/eigen/blas/complex_double.d \
./Platform/Eigen/eigen/blas/complex_single.d \
./Platform/Eigen/eigen/blas/double.d \
./Platform/Eigen/eigen/blas/single.d \
./Platform/Eigen/eigen/blas/xerbla.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/blas/%.o: ../Platform/Eigen/eigen/blas/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


