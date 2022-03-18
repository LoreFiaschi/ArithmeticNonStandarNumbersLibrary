//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Mar 18 11:51:50 2022
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
    bus_in,
    bus_out,
    clk_100MHz,
    reset);
  output ap_ctrl_0_done;
  output ap_ctrl_0_idle;
  output ap_ctrl_0_ready;
  input ap_ctrl_0_start;
  output ap_local_block_0;
  output ap_local_deadlock_0;
  input [127:0]bus_in;
  output [159:0]bus_out;
  input clk_100MHz;
  input reset;

  wire ap_ctrl_0_done;
  wire ap_ctrl_0_idle;
  wire ap_ctrl_0_ready;
  wire ap_ctrl_0_start;
  wire ap_local_block_0;
  wire ap_local_deadlock_0;
  wire [127:0]bus_in;
  wire [159:0]bus_out;
  wire clk_100MHz;
  wire reset;

  design_1 design_1_i
       (.ap_ctrl_0_done(ap_ctrl_0_done),
        .ap_ctrl_0_idle(ap_ctrl_0_idle),
        .ap_ctrl_0_ready(ap_ctrl_0_ready),
        .ap_ctrl_0_start(ap_ctrl_0_start),
        .ap_local_block_0(ap_local_block_0),
        .ap_local_deadlock_0(ap_local_deadlock_0),
        .bus_in(bus_in),
        .bus_out(bus_out),
        .clk_100MHz(clk_100MHz),
        .reset(reset));
endmodule
