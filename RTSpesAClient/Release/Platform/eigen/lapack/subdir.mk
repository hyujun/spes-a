################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/lapack/cholesky.cpp \
../Platform/eigen/lapack/complex_double.cpp \
../Platform/eigen/lapack/complex_single.cpp \
../Platform/eigen/lapack/double.cpp \
../Platform/eigen/lapack/eigenvalues.cpp \
../Platform/eigen/lapack/lu.cpp \
../Platform/eigen/lapack/single.cpp 

OBJS += \
./Platform/eigen/lapack/cholesky.o \
./Platform/eigen/lapack/complex_double.o \
./Platform/eigen/lapack/complex_single.o \
./Platform/eigen/lapack/double.o \
./Platform/eigen/lapack/eigenvalues.o \
./Platform/eigen/lapack/lu.o \
./Platform/eigen/lapack/single.o 

CPP_DEPS += \
./Platform/eigen/lapack/cholesky.d \
./Platform/eigen/lapack/complex_double.d \
./Platform/eigen/lapack/complex_single.d \
./Platform/eigen/lapack/double.d \
./Platform/eigen/lapack/eigenvalues.d \
./Platform/eigen/lapack/lu.d \
./Platform/eigen/lapack/single.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/lapack/%.o: ../Platform/eigen/lapack/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


