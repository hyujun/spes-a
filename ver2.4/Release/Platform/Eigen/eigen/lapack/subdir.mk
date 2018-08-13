################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/lapack/cholesky.cpp \
../Platform/Eigen/eigen/lapack/complex_double.cpp \
../Platform/Eigen/eigen/lapack/complex_single.cpp \
../Platform/Eigen/eigen/lapack/double.cpp \
../Platform/Eigen/eigen/lapack/eigenvalues.cpp \
../Platform/Eigen/eigen/lapack/lu.cpp \
../Platform/Eigen/eigen/lapack/single.cpp 

OBJS += \
./Platform/Eigen/eigen/lapack/cholesky.o \
./Platform/Eigen/eigen/lapack/complex_double.o \
./Platform/Eigen/eigen/lapack/complex_single.o \
./Platform/Eigen/eigen/lapack/double.o \
./Platform/Eigen/eigen/lapack/eigenvalues.o \
./Platform/Eigen/eigen/lapack/lu.o \
./Platform/Eigen/eigen/lapack/single.o 

CPP_DEPS += \
./Platform/Eigen/eigen/lapack/cholesky.d \
./Platform/Eigen/eigen/lapack/complex_double.d \
./Platform/Eigen/eigen/lapack/complex_single.d \
./Platform/Eigen/eigen/lapack/double.d \
./Platform/Eigen/eigen/lapack/eigenvalues.d \
./Platform/Eigen/eigen/lapack/lu.d \
./Platform/Eigen/eigen/lapack/single.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/lapack/%.o: ../Platform/Eigen/eigen/lapack/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


