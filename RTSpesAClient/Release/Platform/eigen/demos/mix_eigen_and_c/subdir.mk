################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/demos/mix_eigen_and_c/binary_library.cpp 

C_SRCS += \
../Platform/eigen/demos/mix_eigen_and_c/example.c 

OBJS += \
./Platform/eigen/demos/mix_eigen_and_c/binary_library.o \
./Platform/eigen/demos/mix_eigen_and_c/example.o 

CPP_DEPS += \
./Platform/eigen/demos/mix_eigen_and_c/binary_library.d 

C_DEPS += \
./Platform/eigen/demos/mix_eigen_and_c/example.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/demos/mix_eigen_and_c/%.o: ../Platform/eigen/demos/mix_eigen_and_c/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Platform/eigen/demos/mix_eigen_and_c/%.o: ../Platform/eigen/demos/mix_eigen_and_c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -std=c99 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


