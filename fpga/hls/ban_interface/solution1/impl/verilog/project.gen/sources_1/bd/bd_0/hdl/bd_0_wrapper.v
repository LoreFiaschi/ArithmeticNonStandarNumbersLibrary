//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Tue Feb  8 15:53:31 2022
//Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_local_block,
    ap_local_deadlock,
    ap_return,
    ap_rst,
    b_op1_i,
    b_op1_o,
    b_op1_o_ap_vld,
    b_op2,
    f_op,
    op);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output ap_local_block;
  output ap_local_deadlock;
  output [127:0]ap_return;
  input ap_rst;
  input [127:0]b_op1_i;
  output [127:0]b_op1_o;
  output b_op1_o_ap_vld;
  input [127:0]b_op2;
  input [31:0]f_op;
  input [31:0]op;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_local_block;
  wire ap_local_deadlock;
  wire [127:0]ap_return;
  wire ap_rst;
  wire [127:0]b_op1_i;
  wire [127:0]b_op1_o;
  wire b_op1_o_ap_vld;
  wire [127:0]b_op2;
  wire [31:0]f_op;
  wire [31:0]op;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_local_block(ap_local_block),
        .ap_local_deadlock(ap_local_deadlock),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .b_op1_i(b_op1_i),
        .b_op1_o(b_op1_o),
        .b_op1_o_ap_vld(b_op1_o_ap_vld),
        .b_op2(b_op2),
        .f_op(f_op),
        .op(op));
endmodule
