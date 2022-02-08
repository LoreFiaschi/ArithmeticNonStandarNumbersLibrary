############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ban_interface
set_top ban_interface
add_files ../src/ban.cpp -cflags "-DFPGA_HLS"
add_files ../src/ban.h
add_files ../src/ban_interface.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_interface -rtl verilog -vivado_clock 10
#source "./ban_interface/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_interface
