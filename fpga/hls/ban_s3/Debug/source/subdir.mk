################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/src/ban_interface.cpp \
/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/src/ban_s3.cpp 

OBJS += \
./source/ban_interface.o \
./source/ban_s3.o 

CPP_DEPS += \
./source/ban_interface.d \
./source/ban_s3.d 


# Each subdirectory must supply rules for building sources it contributes
source/ban_interface.o: /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/src/ban_interface.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/systemc/include -I/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/etc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/ap_sysc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/ban_s3.o: /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/src/ban_s3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/systemc/include -I/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/etc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include -I/home/lorenzo/Programs/Vitis_HLS/2021.2/include/ap_sysc -I/home/lorenzo/Programs/Vitis_HLS/2021.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


