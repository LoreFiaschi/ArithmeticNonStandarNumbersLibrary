############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ban_s3
set_top ban_interface
add_files ../src/ban_s3.h
add_files ../src/ban_s3.cpp
add_files ../src/ban_interface.cpp
add_files -tb ../test/vitis_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7vx690tffg1761-2}
create_clock -period 10 -name default
config_export -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1
source "./ban_s3/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design -wave_debug -disable_deadlock_detection -enable_dataflow_profiling -trace_level port
export_design -rtl verilog -format ip_catalog -output /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1
