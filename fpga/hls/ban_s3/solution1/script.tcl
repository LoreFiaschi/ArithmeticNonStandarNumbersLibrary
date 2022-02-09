############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ban_s3
set_top ban_interface
add_files ../src/ban_interface.cpp
add_files ../src/ban_s3.cpp
add_files ../src/ban_s3.h
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./ban_s3/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
