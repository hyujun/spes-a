################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Platform/eigen/bench/btl/libs/eigen2/btl_tiny_eigen2.cpp \
../Platform/eigen/bench/btl/libs/eigen2/main_adv.cpp \
../Platform/eigen/bench/btl/libs/eigen2/main_linear.cpp \
../Platform/eigen/bench/btl/libs/eigen2/main_matmat.cpp \
../Platform/eigen/bench/btl/libs/eigen2/main_vecmat.cpp 

OBJS += \
./Platform/eigen/bench/btl/libs/eigen2/btl_tiny_eigen2.o \
./Platform/eigen/bench/btl/libs/eigen2/main_adv.o \
./Platform/eigen/bench/btl/libs/eigen2/main_linear.o \
./Platform/eigen/bench/btl/libs/eigen2/main_matmat.o \
./Platform/eigen/bench/btl/libs/eigen2/main_vecmat.o 

CPP_DEPS += \
./Platform/eigen/bench/btl/libs/eigen2/btl_tiny_eigen2.d \
./Platform/eigen/bench/btl/libs/eigen2/main_adv.d \
./Platform/eigen/bench/btl/libs/eigen2/main_linear.d \
./Platform/eigen/bench/btl/libs/eigen2/main_matmat.d \
./Platform/eigen/bench/btl/libs/eigen2/main_vecmat.d 


# Each subdirectory must supply rules for building sources it contributes
Platform/eigen/bench/btl/libs/eigen2/%.o: ../Platform/eigen/bench/btl/libs/eigen2/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++98 -I"/home/spec/eclipse-workspace/ver2.3/Platform/Poco/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/xenomai/include" -I"/home/spec/eclipse-workspace/ver2.3/Platform/eigen" -O3 -Wall -c -fmessage-length=0 -fopenmp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


