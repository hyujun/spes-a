################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/unsupported/doc/examples/BVH_Example.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/FFT.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixExponential.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixFunction.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixLogarithm.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower_optimal.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixSine.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixSinh.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/MatrixSquareRoot.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/PolynomialSolver1.cpp \
../Platform/Eigen/eigen/unsupported/doc/examples/PolynomialUtils1.cpp 

OBJS += \
./Platform/Eigen/eigen/unsupported/doc/examples/BVH_Example.o \
./Platform/Eigen/eigen/unsupported/doc/examples/FFT.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixExponential.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixFunction.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixLogarithm.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower_optimal.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSine.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSinh.o \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSquareRoot.o \
./Platform/Eigen/eigen/unsupported/doc/examples/PolynomialSolver1.o \
./Platform/Eigen/eigen/unsupported/doc/examples/PolynomialUtils1.o 

CPP_DEPS += \
./Platform/Eigen/eigen/unsupported/doc/examples/BVH_Example.d \
./Platform/Eigen/eigen/unsupported/doc/examples/FFT.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixExponential.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixFunction.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixLogarithm.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixPower_optimal.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSine.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSinh.d \
./Platform/Eigen/eigen/unsupported/doc/examples/MatrixSquareRoot.d \
./Platform/Eigen/eigen/unsupported/doc/examples/PolynomialSolver1.d \
./Platform/Eigen/eigen/unsupported/doc/examples/PolynomialUtils1.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/unsupported/doc/examples/%.o: ../Platform/Eigen/eigen/unsupported/doc/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


