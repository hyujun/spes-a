################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/bench/basicbenchmark.cpp \
../Platform/Eigen/eigen/bench/benchBlasGemm.cpp \
../Platform/Eigen/eigen/bench/benchCholesky.cpp \
../Platform/Eigen/eigen/bench/benchEigenSolver.cpp \
../Platform/Eigen/eigen/bench/benchFFT.cpp \
../Platform/Eigen/eigen/bench/benchGeometry.cpp \
../Platform/Eigen/eigen/bench/benchVecAdd.cpp \
../Platform/Eigen/eigen/bench/bench_gemm.cpp \
../Platform/Eigen/eigen/bench/bench_norm.cpp \
../Platform/Eigen/eigen/bench/bench_reverse.cpp \
../Platform/Eigen/eigen/bench/bench_sum.cpp \
../Platform/Eigen/eigen/bench/benchmark.cpp \
../Platform/Eigen/eigen/bench/benchmarkSlice.cpp \
../Platform/Eigen/eigen/bench/benchmarkX.cpp \
../Platform/Eigen/eigen/bench/benchmarkXcwise.cpp \
../Platform/Eigen/eigen/bench/check_cache_queries.cpp \
../Platform/Eigen/eigen/bench/eig33.cpp \
../Platform/Eigen/eigen/bench/geometry.cpp \
../Platform/Eigen/eigen/bench/product_threshold.cpp \
../Platform/Eigen/eigen/bench/quat_slerp.cpp \
../Platform/Eigen/eigen/bench/quatmul.cpp \
../Platform/Eigen/eigen/bench/sparse_cholesky.cpp \
../Platform/Eigen/eigen/bench/sparse_dense_product.cpp \
../Platform/Eigen/eigen/bench/sparse_lu.cpp \
../Platform/Eigen/eigen/bench/sparse_product.cpp \
../Platform/Eigen/eigen/bench/sparse_randomsetter.cpp \
../Platform/Eigen/eigen/bench/sparse_setter.cpp \
../Platform/Eigen/eigen/bench/sparse_transpose.cpp \
../Platform/Eigen/eigen/bench/sparse_trisolver.cpp \
../Platform/Eigen/eigen/bench/spmv.cpp \
../Platform/Eigen/eigen/bench/vdw_new.cpp 

OBJS += \
./Platform/Eigen/eigen/bench/basicbenchmark.o \
./Platform/Eigen/eigen/bench/benchBlasGemm.o \
./Platform/Eigen/eigen/bench/benchCholesky.o \
./Platform/Eigen/eigen/bench/benchEigenSolver.o \
./Platform/Eigen/eigen/bench/benchFFT.o \
./Platform/Eigen/eigen/bench/benchGeometry.o \
./Platform/Eigen/eigen/bench/benchVecAdd.o \
./Platform/Eigen/eigen/bench/bench_gemm.o \
./Platform/Eigen/eigen/bench/bench_norm.o \
./Platform/Eigen/eigen/bench/bench_reverse.o \
./Platform/Eigen/eigen/bench/bench_sum.o \
./Platform/Eigen/eigen/bench/benchmark.o \
./Platform/Eigen/eigen/bench/benchmarkSlice.o \
./Platform/Eigen/eigen/bench/benchmarkX.o \
./Platform/Eigen/eigen/bench/benchmarkXcwise.o \
./Platform/Eigen/eigen/bench/check_cache_queries.o \
./Platform/Eigen/eigen/bench/eig33.o \
./Platform/Eigen/eigen/bench/geometry.o \
./Platform/Eigen/eigen/bench/product_threshold.o \
./Platform/Eigen/eigen/bench/quat_slerp.o \
./Platform/Eigen/eigen/bench/quatmul.o \
./Platform/Eigen/eigen/bench/sparse_cholesky.o \
./Platform/Eigen/eigen/bench/sparse_dense_product.o \
./Platform/Eigen/eigen/bench/sparse_lu.o \
./Platform/Eigen/eigen/bench/sparse_product.o \
./Platform/Eigen/eigen/bench/sparse_randomsetter.o \
./Platform/Eigen/eigen/bench/sparse_setter.o \
./Platform/Eigen/eigen/bench/sparse_transpose.o \
./Platform/Eigen/eigen/bench/sparse_trisolver.o \
./Platform/Eigen/eigen/bench/spmv.o \
./Platform/Eigen/eigen/bench/vdw_new.o 

CPP_DEPS += \
./Platform/Eigen/eigen/bench/basicbenchmark.d \
./Platform/Eigen/eigen/bench/benchBlasGemm.d \
./Platform/Eigen/eigen/bench/benchCholesky.d \
./Platform/Eigen/eigen/bench/benchEigenSolver.d \
./Platform/Eigen/eigen/bench/benchFFT.d \
./Platform/Eigen/eigen/bench/benchGeometry.d \
./Platform/Eigen/eigen/bench/benchVecAdd.d \
./Platform/Eigen/eigen/bench/bench_gemm.d \
./Platform/Eigen/eigen/bench/bench_norm.d \
./Platform/Eigen/eigen/bench/bench_reverse.d \
./Platform/Eigen/eigen/bench/bench_sum.d \
./Platform/Eigen/eigen/bench/benchmark.d \
./Platform/Eigen/eigen/bench/benchmarkSlice.d \
./Platform/Eigen/eigen/bench/benchmarkX.d \
./Platform/Eigen/eigen/bench/benchmarkXcwise.d \
./Platform/Eigen/eigen/bench/check_cache_queries.d \
./Platform/Eigen/eigen/bench/eig33.d \
./Platform/Eigen/eigen/bench/geometry.d \
./Platform/Eigen/eigen/bench/product_threshold.d \
./Platform/Eigen/eigen/bench/quat_slerp.d \
./Platform/Eigen/eigen/bench/quatmul.d \
./Platform/Eigen/eigen/bench/sparse_cholesky.d \
./Platform/Eigen/eigen/bench/sparse_dense_product.d \
./Platform/Eigen/eigen/bench/sparse_lu.d \
./Platform/Eigen/eigen/bench/sparse_product.d \
./Platform/Eigen/eigen/bench/sparse_randomsetter.d \
./Platform/Eigen/eigen/bench/sparse_setter.d \
./Platform/Eigen/eigen/bench/sparse_transpose.d \
./Platform/Eigen/eigen/bench/sparse_trisolver.d \
./Platform/Eigen/eigen/bench/spmv.d \
./Platform/Eigen/eigen/bench/vdw_new.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/bench/%.o: ../Platform/Eigen/eigen/bench/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


