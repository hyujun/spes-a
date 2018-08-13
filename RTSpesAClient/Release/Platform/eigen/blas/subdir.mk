################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/blas/complex_double.cpp \
../Platform/eigen/blas/complex_single.cpp \
../Platform/eigen/blas/double.cpp \
../Platform/eigen/blas/single.cpp \
../Platform/eigen/blas/xerbla.cpp 

OBJS += \
./Platform/eigen/blas/complex_double.o \
./Platform/eigen/blas/complex_single.o \
./Platform/eigen/blas/double.o \
./Platform/eigen/blas/single.o \
./Platform/eigen/blas/xerbla.o 

CPP_DEPS += \
./Platform/eigen/blas/complex_double.d \
./Platform/eigen/blas/complex_single.d \
./Platform/eigen/blas/double.d \
./Platform/eigen/blas/single.d \
./Platform/eigen/blas/xerbla.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/blas/%.o: ../Platform/eigen/blas/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


