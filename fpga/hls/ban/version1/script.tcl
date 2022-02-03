############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ban
set_top main
add_files ../src/ban.cpp -cflags "-DFPGA_HLS -std=c/+/+17"
add_files ../src/ban.h
add_files ../test/vivado_main.cpp -cflags "-DFPGA_HLS -std=c/+/+17"
open_solution "version1" -flow_target vivado
set_part {xczu49dr-ffvf1760-2-e}
create_clock -period 10 -name default
source "./ban/version1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
