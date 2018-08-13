################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/demos/opengl/camera.cpp \
../Platform/eigen/demos/opengl/gpuhelper.cpp \
../Platform/eigen/demos/opengl/icosphere.cpp \
../Platform/eigen/demos/opengl/quaternion_demo.cpp \
../Platform/eigen/demos/opengl/trackball.cpp 

OBJS += \
./Platform/eigen/demos/opengl/camera.o \
./Platform/eigen/demos/opengl/gpuhelper.o \
./Platform/eigen/demos/opengl/icosphere.o \
./Platform/eigen/demos/opengl/quaternion_demo.o \
./Platform/eigen/demos/opengl/trackball.o 

CPP_DEPS += \
./Platform/eigen/demos/opengl/camera.d \
./Platform/eigen/demos/opengl/gpuhelper.d \
./Platform/eigen/demos/opengl/icosphere.d \
./Platform/eigen/demos/opengl/quaternion_demo.d \
./Platform/eigen/demos/opengl/trackball.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/demos/opengl/%.o: ../Platform/eigen/demos/opengl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


