################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/unsupported/test/BVH.cpp \
../Platform/Eigen/eigen/unsupported/test/FFT.cpp \
../Platform/Eigen/eigen/unsupported/test/FFTW.cpp \
../Platform/Eigen/eigen/unsupported/test/NonLinearOptimization.cpp \
../Platform/Eigen/eigen/unsupported/test/NumericalDiff.cpp \
../Platform/Eigen/eigen/unsupported/test/alignedvector3.cpp \
../Platform/Eigen/eigen/unsupported/test/autodiff.cpp \
../Platform/Eigen/eigen/unsupported/test/bdcsvd.cpp \
../Platform/Eigen/eigen/unsupported/test/dgmres.cpp \
../Platform/Eigen/eigen/unsupported/test/forward_adolc.cpp \
../Platform/Eigen/eigen/unsupported/test/gmres.cpp \
../Platform/Eigen/eigen/unsupported/test/jacobisvd.cpp \
../Platform/Eigen/eigen/unsupported/test/kronecker_product.cpp \
../Platform/Eigen/eigen/unsupported/test/levenberg_marquardt.cpp \
../Platform/Eigen/eigen/unsupported/test/matrix_exponential.cpp \
../Platform/Eigen/eigen/unsupported/test/matrix_function.cpp \
../Platform/Eigen/eigen/unsupported/test/matrix_power.cpp \
../Platform/Eigen/eigen/unsupported/test/matrix_square_root.cpp \
../Platform/Eigen/eigen/unsupported/test/minres.cpp \
../Platform/Eigen/eigen/unsupported/test/mpreal_support.cpp \
../Platform/Eigen/eigen/unsupported/test/openglsupport.cpp \
../Platform/Eigen/eigen/unsupported/test/polynomialsolver.cpp \
../Platform/Eigen/eigen/unsupported/test/polynomialutils.cpp \
../Platform/Eigen/eigen/unsupported/test/sparse_extra.cpp \
../Platform/Eigen/eigen/unsupported/test/splines.cpp 

OBJS += \
./Platform/Eigen/eigen/unsupported/test/BVH.o \
./Platform/Eigen/eigen/unsupported/test/FFT.o \
./Platform/Eigen/eigen/unsupported/test/FFTW.o \
./Platform/Eigen/eigen/unsupported/test/NonLinearOptimization.o \
./Platform/Eigen/eigen/unsupported/test/NumericalDiff.o \
./Platform/Eigen/eigen/unsupported/test/alignedvector3.o \
./Platform/Eigen/eigen/unsupported/test/autodiff.o \
./Platform/Eigen/eigen/unsupported/test/bdcsvd.o \
./Platform/Eigen/eigen/unsupported/test/dgmres.o \
./Platform/Eigen/eigen/unsupported/test/forward_adolc.o \
./Platform/Eigen/eigen/unsupported/test/gmres.o \
./Platform/Eigen/eigen/unsupported/test/jacobisvd.o \
./Platform/Eigen/eigen/unsupported/test/kronecker_product.o \
./Platform/Eigen/eigen/unsupported/test/levenberg_marquardt.o \
./Platform/Eigen/eigen/unsupported/test/matrix_exponential.o \
./Platform/Eigen/eigen/unsupported/test/matrix_function.o \
./Platform/Eigen/eigen/unsupported/test/matrix_power.o \
./Platform/Eigen/eigen/unsupported/test/matrix_square_root.o \
./Platform/Eigen/eigen/unsupported/test/minres.o \
./Platform/Eigen/eigen/unsupported/test/mpreal_support.o \
./Platform/Eigen/eigen/unsupported/test/openglsupport.o \
./Platform/Eigen/eigen/unsupported/test/polynomialsolver.o \
./Platform/Eigen/eigen/unsupported/test/polynomialutils.o \
./Platform/Eigen/eigen/unsupported/test/sparse_extra.o \
./Platform/Eigen/eigen/unsupported/test/splines.o 

CPP_DEPS += \
./Platform/Eigen/eigen/unsupported/test/BVH.d \
./Platform/Eigen/eigen/unsupported/test/FFT.d \
./Platform/Eigen/eigen/unsupported/test/FFTW.d \
./Platform/Eigen/eigen/unsupported/test/NonLinearOptimization.d \
./Platform/Eigen/eigen/unsupported/test/NumericalDiff.d \
./Platform/Eigen/eigen/unsupported/test/alignedvector3.d \
./Platform/Eigen/eigen/unsupported/test/autodiff.d \
./Platform/Eigen/eigen/unsupported/test/bdcsvd.d \
./Platform/Eigen/eigen/unsupported/test/dgmres.d \
./Platform/Eigen/eigen/unsupported/test/forward_adolc.d \
./Platform/Eigen/eigen/unsupported/test/gmres.d \
./Platform/Eigen/eigen/unsupported/test/jacobisvd.d \
./Platform/Eigen/eigen/unsupported/test/kronecker_product.d \
./Platform/Eigen/eigen/unsupported/test/levenberg_marquardt.d \
./Platform/Eigen/eigen/unsupported/test/matrix_exponential.d \
./Platform/Eigen/eigen/unsupported/test/matrix_function.d \
./Platform/Eigen/eigen/unsupported/test/matrix_power.d \
./Platform/Eigen/eigen/unsupported/test/matrix_square_root.d \
./Platform/Eigen/eigen/unsupported/test/minres.d \
./Platform/Eigen/eigen/unsupported/test/mpreal_support.d \
./Platform/Eigen/eigen/unsupported/test/openglsupport.d \
./Platform/Eigen/eigen/unsupported/test/polynomialsolver.d \
./Platform/Eigen/eigen/unsupported/test/polynomialutils.d \
./Platform/Eigen/eigen/unsupported/test/sparse_extra.d \
./Platform/Eigen/eigen/unsupported/test/splines.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/unsupported/test/%.o: ../Platform/Eigen/eigen/unsupported/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


