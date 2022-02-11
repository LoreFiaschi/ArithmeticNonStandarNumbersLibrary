// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Feb 11 16:48:11 2022
// Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode synth_stub
//               /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/vivado_ban/vivado_ban.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_stub.v
// Design      : design_1_clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
