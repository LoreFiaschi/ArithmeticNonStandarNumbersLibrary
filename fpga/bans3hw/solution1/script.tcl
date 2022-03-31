############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project bans3hw
set_top ban_interface
add_files src/ban_s3.h
add_files src/ban_s3.cpp
add_files src/ban_interface.cpp
add_files -tb test/vitis_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/bans3hw/solution1 -rtl verilog
source "./bans3hw/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design -disable_deadlock_detection
export_design -rtl verilog -format ip_catalog -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/bans3hw/solution1
