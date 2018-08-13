################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/bench/basicbenchmark.cpp \
../Platform/eigen/bench/benchBlasGemm.cpp \
../Platform/eigen/bench/benchCholesky.cpp \
../Platform/eigen/bench/benchEigenSolver.cpp \
../Platform/eigen/bench/benchFFT.cpp \
../Platform/eigen/bench/benchGeometry.cpp \
../Platform/eigen/bench/benchVecAdd.cpp \
../Platform/eigen/bench/bench_gemm.cpp \
../Platform/eigen/bench/bench_norm.cpp \
../Platform/eigen/bench/bench_reverse.cpp \
../Platform/eigen/bench/bench_sum.cpp \
../Platform/eigen/bench/benchmark.cpp \
../Platform/eigen/bench/benchmarkSlice.cpp \
../Platform/eigen/bench/benchmarkX.cpp \
../Platform/eigen/bench/benchmarkXcwise.cpp \
../Platform/eigen/bench/check_cache_queries.cpp \
../Platform/eigen/bench/eig33.cpp \
../Platform/eigen/bench/geometry.cpp \
../Platform/eigen/bench/product_threshold.cpp \
../Platform/eigen/bench/quat_slerp.cpp \
../Platform/eigen/bench/quatmul.cpp \
../Platform/eigen/bench/sparse_cholesky.cpp \
../Platform/eigen/bench/sparse_dense_product.cpp \
../Platform/eigen/bench/sparse_lu.cpp \
../Platform/eigen/bench/sparse_product.cpp \
../Platform/eigen/bench/sparse_randomsetter.cpp \
../Platform/eigen/bench/sparse_setter.cpp \
../Platform/eigen/bench/sparse_transpose.cpp \
../Platform/eigen/bench/sparse_trisolver.cpp \
../Platform/eigen/bench/spmv.cpp \
../Platform/eigen/bench/vdw_new.cpp 

OBJS += \
./Platform/eigen/bench/basicbenchmark.o \
./Platform/eigen/bench/benchBlasGemm.o \
./Platform/eigen/bench/benchCholesky.o \
./Platform/eigen/bench/benchEigenSolver.o \
./Platform/eigen/bench/benchFFT.o \
./Platform/eigen/bench/benchGeometry.o \
./Platform/eigen/bench/benchVecAdd.o \
./Platform/eigen/bench/bench_gemm.o \
./Platform/eigen/bench/bench_norm.o \
./Platform/eigen/bench/bench_reverse.o \
./Platform/eigen/bench/bench_sum.o \
./Platform/eigen/bench/benchmark.o \
./Platform/eigen/bench/benchmarkSlice.o \
./Platform/eigen/bench/benchmarkX.o \
./Platform/eigen/bench/benchmarkXcwise.o \
./Platform/eigen/bench/check_cache_queries.o \
./Platform/eigen/bench/eig33.o \
./Platform/eigen/bench/geometry.o \
./Platform/eigen/bench/product_threshold.o \
./Platform/eigen/bench/quat_slerp.o \
./Platform/eigen/bench/quatmul.o \
./Platform/eigen/bench/sparse_cholesky.o \
./Platform/eigen/bench/sparse_dense_product.o \
./Platform/eigen/bench/sparse_lu.o \
./Platform/eigen/bench/sparse_product.o \
./Platform/eigen/bench/sparse_randomsetter.o \
./Platform/eigen/bench/sparse_setter.o \
./Platform/eigen/bench/sparse_transpose.o \
./Platform/eigen/bench/sparse_trisolver.o \
./Platform/eigen/bench/spmv.o \
./Platform/eigen/bench/vdw_new.o 

CPP_DEPS += \
./Platform/eigen/bench/basicbenchmark.d \
./Platform/eigen/bench/benchBlasGemm.d \
./Platform/eigen/bench/benchCholesky.d \
./Platform/eigen/bench/benchEigenSolver.d \
./Platform/eigen/bench/benchFFT.d \
./Platform/eigen/bench/benchGeometry.d \
./Platform/eigen/bench/benchVecAdd.d \
./Platform/eigen/bench/bench_gemm.d \
./Platform/eigen/bench/bench_norm.d \
./Platform/eigen/bench/bench_reverse.d \
./Platform/eigen/bench/bench_sum.d \
./Platform/eigen/bench/benchmark.d \
./Platform/eigen/bench/benchmarkSlice.d \
./Platform/eigen/bench/benchmarkX.d \
./Platform/eigen/bench/benchmarkXcwise.d \
./Platform/eigen/bench/check_cache_queries.d \
./Platform/eigen/bench/eig33.d \
./Platform/eigen/bench/geometry.d \
./Platform/eigen/bench/product_threshold.d \
./Platform/eigen/bench/quat_slerp.d \
./Platform/eigen/bench/quatmul.d \
./Platform/eigen/bench/sparse_cholesky.d \
./Platform/eigen/bench/sparse_dense_product.d \
./Platform/eigen/bench/sparse_lu.d \
./Platform/eigen/bench/sparse_product.d \
./Platform/eigen/bench/sparse_randomsetter.d \
./Platform/eigen/bench/sparse_setter.d \
./Platform/eigen/bench/sparse_transpose.d \
./Platform/eigen/bench/sparse_trisolver.d \
./Platform/eigen/bench/spmv.d \
./Platform/eigen/bench/vdw_new.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/bench/%.o: ../Platform/eigen/bench/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


