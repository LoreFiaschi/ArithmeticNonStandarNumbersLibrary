// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Feb 11 16:47:19 2022
// Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ban_interface_0_0_stub.v
// Design      : design_1_ban_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ban_interface,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_local_block, ap_local_deadlock, ap_clk, 
  ap_rst, ap_start, ap_done, ap_idle, ap_ready, ap_return, b_op1, b_op2, f_op, op)
/* synthesis syn_black_box black_box_pad_pin="ap_local_block,ap_local_deadlock,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[159:0],b_op1[127:0],b_op2[127:0],f_op[31:0],op[31:0]" */;
  output ap_local_block;
  output ap_local_deadlock;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [159:0]ap_return;
  input [127:0]b_op1;
  input [127:0]b_op2;
  input [31:0]f_op;
  input [31:0]op;
endmodule
