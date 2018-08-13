################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/unsupported/doc/examples/BVH_Example.cpp \
../Platform/eigen/unsupported/doc/examples/FFT.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixExponential.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixFunction.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixLogarithm.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixPower.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixPower_optimal.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixSine.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixSinh.cpp \
../Platform/eigen/unsupported/doc/examples/MatrixSquareRoot.cpp \
../Platform/eigen/unsupported/doc/examples/PolynomialSolver1.cpp \
../Platform/eigen/unsupported/doc/examples/PolynomialUtils1.cpp 

OBJS += \
./Platform/eigen/unsupported/doc/examples/BVH_Example.o \
./Platform/eigen/unsupported/doc/examples/FFT.o \
./Platform/eigen/unsupported/doc/examples/MatrixExponential.o \
./Platform/eigen/unsupported/doc/examples/MatrixFunction.o \
./Platform/eigen/unsupported/doc/examples/MatrixLogarithm.o \
./Platform/eigen/unsupported/doc/examples/MatrixPower.o \
./Platform/eigen/unsupported/doc/examples/MatrixPower_optimal.o \
./Platform/eigen/unsupported/doc/examples/MatrixSine.o \
./Platform/eigen/unsupported/doc/examples/MatrixSinh.o \
./Platform/eigen/unsupported/doc/examples/MatrixSquareRoot.o \
./Platform/eigen/unsupported/doc/examples/PolynomialSolver1.o \
./Platform/eigen/unsupported/doc/examples/PolynomialUtils1.o 

CPP_DEPS += \
./Platform/eigen/unsupported/doc/examples/BVH_Example.d \
./Platform/eigen/unsupported/doc/examples/FFT.d \
./Platform/eigen/unsupported/doc/examples/MatrixExponential.d \
./Platform/eigen/unsupported/doc/examples/MatrixFunction.d \
./Platform/eigen/unsupported/doc/examples/MatrixLogarithm.d \
./Platform/eigen/unsupported/doc/examples/MatrixPower.d \
./Platform/eigen/unsupported/doc/examples/MatrixPower_optimal.d \
./Platform/eigen/unsupported/doc/examples/MatrixSine.d \
./Platform/eigen/unsupported/doc/examples/MatrixSinh.d \
./Platform/eigen/unsupported/doc/examples/MatrixSquareRoot.d \
./Platform/eigen/unsupported/doc/examples/PolynomialSolver1.d \
./Platform/eigen/unsupported/doc/examples/PolynomialUtils1.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/unsupported/doc/examples/%.o: ../Platform/eigen/unsupported/doc/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


