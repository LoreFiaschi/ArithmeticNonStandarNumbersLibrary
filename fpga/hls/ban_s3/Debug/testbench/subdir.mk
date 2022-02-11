################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/test/vitis_test.cpp 

OBJS += \
./testbench/vitis_test.o 

CPP_DEPS += \
./testbench/vitis_test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/vitis_test.o: /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/test/vitis_test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/systemc/include -I/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/etc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/ap_sysc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


