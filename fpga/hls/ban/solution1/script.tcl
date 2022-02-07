############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ban
set_top main
add_files ../test/vivado_main.cpp -cflags "-DFPGA_HLS -O2"
add_files ../src/ban.h
add_files ../src/ban.cpp -cflags "-DFPGA_HLS -O2"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
source "./ban/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
