################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/Eigen/eigen/demos/opengl/camera.cpp \
../Platform/Eigen/eigen/demos/opengl/gpuhelper.cpp \
../Platform/Eigen/eigen/demos/opengl/icosphere.cpp \
../Platform/Eigen/eigen/demos/opengl/quaternion_demo.cpp \
../Platform/Eigen/eigen/demos/opengl/trackball.cpp 

OBJS += \
./Platform/Eigen/eigen/demos/opengl/camera.o \
./Platform/Eigen/eigen/demos/opengl/gpuhelper.o \
./Platform/Eigen/eigen/demos/opengl/icosphere.o \
./Platform/Eigen/eigen/demos/opengl/quaternion_demo.o \
./Platform/Eigen/eigen/demos/opengl/trackball.o 

CPP_DEPS += \
./Platform/Eigen/eigen/demos/opengl/camera.d \
./Platform/Eigen/eigen/demos/opengl/gpuhelper.d \
./Platform/Eigen/eigen/demos/opengl/icosphere.d \
./Platform/Eigen/eigen/demos/opengl/quaternion_demo.d \
./Platform/Eigen/eigen/demos/opengl/trackball.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/Eigen/eigen/demos/opengl/%.o: ../Platform/Eigen/eigen/demos/opengl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/Eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


