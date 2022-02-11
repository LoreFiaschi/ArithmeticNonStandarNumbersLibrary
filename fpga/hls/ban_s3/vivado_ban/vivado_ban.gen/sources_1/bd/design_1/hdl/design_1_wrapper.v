//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Feb 11 17:12:51 2022
//Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_ctrl_0_done,
    ap_ctrl_0_idle,
    ap_ctrl_0_ready,
    ap_ctrl_0_start,
    ap_local_block_0,
    ap_local_deadlock_0,
    ap_return_0,
    b_op1_0,
    b_op2_0,
    clk_100MHz,
    f_op_0,
    op_0,
    reset);
  output ap_ctrl_0_done;
  output ap_ctrl_0_idle;
  output ap_ctrl_0_ready;
  input ap_ctrl_0_start;
  output ap_local_block_0;
  output ap_local_deadlock_0;
  output [159:0]ap_return_0;
  input [127:0]b_op1_0;
  input [127:0]b_op2_0;
  input clk_100MHz;
  input [31:0]f_op_0;
  input [31:0]op_0;
  input reset;

  wire ap_ctrl_0_done;
  wire ap_ctrl_0_idle;
  wire ap_ctrl_0_ready;
  wire ap_ctrl_0_start;
  wire ap_local_block_0;
  wire ap_local_deadlock_0;
  wire [159:0]ap_return_0;
  wire [127:0]b_op1_0;
  wire [127:0]b_op2_0;
  wire clk_100MHz;
  wire [31:0]f_op_0;
  wire [31:0]op_0;
  wire reset;

  design_1 design_1_i
       (.ap_ctrl_0_done(ap_ctrl_0_done),
        .ap_ctrl_0_idle(ap_ctrl_0_idle),
        .ap_ctrl_0_ready(ap_ctrl_0_ready),
        .ap_ctrl_0_start(ap_ctrl_0_start),
        .ap_local_block_0(ap_local_block_0),
        .ap_local_deadlock_0(ap_local_deadlock_0),
        .ap_return_0(ap_return_0),
        .b_op1_0(b_op1_0),
        .b_op2_0(b_op2_0),
        .clk_100MHz(clk_100MHz),
        .f_op_0(f_op_0),
        .op_0(op_0),
        .reset(reset));
endmodule
