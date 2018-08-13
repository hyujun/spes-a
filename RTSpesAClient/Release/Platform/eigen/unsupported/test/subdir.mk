################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/unsupported/test/BVH.cpp \
../Platform/eigen/unsupported/test/FFT.cpp \
../Platform/eigen/unsupported/test/FFTW.cpp \
../Platform/eigen/unsupported/test/NonLinearOptimization.cpp \
../Platform/eigen/unsupported/test/NumericalDiff.cpp \
../Platform/eigen/unsupported/test/alignedvector3.cpp \
../Platform/eigen/unsupported/test/autodiff.cpp \
../Platform/eigen/unsupported/test/bdcsvd.cpp \
../Platform/eigen/unsupported/test/dgmres.cpp \
../Platform/eigen/unsupported/test/forward_adolc.cpp \
../Platform/eigen/unsupported/test/gmres.cpp \
../Platform/eigen/unsupported/test/jacobisvd.cpp \
../Platform/eigen/unsupported/test/kronecker_product.cpp \
../Platform/eigen/unsupported/test/levenberg_marquardt.cpp \
../Platform/eigen/unsupported/test/matrix_exponential.cpp \
../Platform/eigen/unsupported/test/matrix_function.cpp \
../Platform/eigen/unsupported/test/matrix_power.cpp \
../Platform/eigen/unsupported/test/matrix_square_root.cpp \
../Platform/eigen/unsupported/test/minres.cpp \
../Platform/eigen/unsupported/test/mpreal_support.cpp \
../Platform/eigen/unsupported/test/openglsupport.cpp \
../Platform/eigen/unsupported/test/polynomialsolver.cpp \
../Platform/eigen/unsupported/test/polynomialutils.cpp \
../Platform/eigen/unsupported/test/sparse_extra.cpp \
../Platform/eigen/unsupported/test/splines.cpp 

OBJS += \
./Platform/eigen/unsupported/test/BVH.o \
./Platform/eigen/unsupported/test/FFT.o \
./Platform/eigen/unsupported/test/FFTW.o \
./Platform/eigen/unsupported/test/NonLinearOptimization.o \
./Platform/eigen/unsupported/test/NumericalDiff.o \
./Platform/eigen/unsupported/test/alignedvector3.o \
./Platform/eigen/unsupported/test/autodiff.o \
./Platform/eigen/unsupported/test/bdcsvd.o \
./Platform/eigen/unsupported/test/dgmres.o \
./Platform/eigen/unsupported/test/forward_adolc.o \
./Platform/eigen/unsupported/test/gmres.o \
./Platform/eigen/unsupported/test/jacobisvd.o \
./Platform/eigen/unsupported/test/kronecker_product.o \
./Platform/eigen/unsupported/test/levenberg_marquardt.o \
./Platform/eigen/unsupported/test/matrix_exponential.o \
./Platform/eigen/unsupported/test/matrix_function.o \
./Platform/eigen/unsupported/test/matrix_power.o \
./Platform/eigen/unsupported/test/matrix_square_root.o \
./Platform/eigen/unsupported/test/minres.o \
./Platform/eigen/unsupported/test/mpreal_support.o \
./Platform/eigen/unsupported/test/openglsupport.o \
./Platform/eigen/unsupported/test/polynomialsolver.o \
./Platform/eigen/unsupported/test/polynomialutils.o \
./Platform/eigen/unsupported/test/sparse_extra.o \
./Platform/eigen/unsupported/test/splines.o 

CPP_DEPS += \
./Platform/eigen/unsupported/test/BVH.d \
./Platform/eigen/unsupported/test/FFT.d \
./Platform/eigen/unsupported/test/FFTW.d \
./Platform/eigen/unsupported/test/NonLinearOptimization.d \
./Platform/eigen/unsupported/test/NumericalDiff.d \
./Platform/eigen/unsupported/test/alignedvector3.d \
./Platform/eigen/unsupported/test/autodiff.d \
./Platform/eigen/unsupported/test/bdcsvd.d \
./Platform/eigen/unsupported/test/dgmres.d \
./Platform/eigen/unsupported/test/forward_adolc.d \
./Platform/eigen/unsupported/test/gmres.d \
./Platform/eigen/unsupported/test/jacobisvd.d \
./Platform/eigen/unsupported/test/kronecker_product.d \
./Platform/eigen/unsupported/test/levenberg_marquardt.d \
./Platform/eigen/unsupported/test/matrix_exponential.d \
./Platform/eigen/unsupported/test/matrix_function.d \
./Platform/eigen/unsupported/test/matrix_power.d \
./Platform/eigen/unsupported/test/matrix_square_root.d \
./Platform/eigen/unsupported/test/minres.d \
./Platform/eigen/unsupported/test/mpreal_support.d \
./Platform/eigen/unsupported/test/openglsupport.d \
./Platform/eigen/unsupported/test/polynomialsolver.d \
./Platform/eigen/unsupported/test/polynomialutils.d \
./Platform/eigen/unsupported/test/sparse_extra.d \
./Platform/eigen/unsupported/test/splines.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/unsupported/test/%.o: ../Platform/eigen/unsupported/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


