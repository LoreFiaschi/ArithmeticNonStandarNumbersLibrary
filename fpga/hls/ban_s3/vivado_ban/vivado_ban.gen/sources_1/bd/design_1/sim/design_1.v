//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Feb 11 17:12:50 2022
//Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 done" *) output ap_ctrl_0_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 idle" *) output ap_ctrl_0_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 ready" *) output ap_ctrl_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 start" *) input ap_ctrl_0_start;
  output ap_local_block_0;
  output ap_local_deadlock_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AP_RETURN_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AP_RETURN_0, LAYERED_METADATA undef" *) output [159:0]ap_return_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_OP1_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_OP1_0, LAYERED_METADATA undef" *) input [127:0]b_op1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_OP2_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_OP2_0, LAYERED_METADATA undef" *) input [127:0]b_op2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.F_OP_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.F_OP_0, LAYERED_METADATA undef" *) input [31:0]f_op_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OP_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OP_0, LAYERED_METADATA undef" *) input [31:0]op_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire [127:0]b_op1_0_1;
  wire [127:0]b_op2_0_1;
  wire ban_interface_0_ap_local_block;
  wire ban_interface_0_ap_local_deadlock;
  wire [159:0]ban_interface_0_ap_return;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire [31:0]f_op_0_1;
  wire [31:0]op_0_1;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_reset;

  assign ap_ctrl_0_1_start = ap_ctrl_0_start;
  assign ap_ctrl_0_done = ap_ctrl_0_1_done;
  assign ap_ctrl_0_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_0_ready = ap_ctrl_0_1_ready;
  assign ap_local_block_0 = ban_interface_0_ap_local_block;
  assign ap_local_deadlock_0 = ban_interface_0_ap_local_deadlock;
  assign ap_return_0[159:0] = ban_interface_0_ap_return;
  assign b_op1_0_1 = b_op1_0[127:0];
  assign b_op2_0_1 = b_op2_0[127:0];
  assign clk_100MHz_1 = clk_100MHz;
  assign f_op_0_1 = f_op_0[31:0];
  assign op_0_1 = op_0[31:0];
  assign reset_1 = reset;
  design_1_ban_interface_0_0 ban_interface_0
       (.ap_clk(clk_wiz_clk_out1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_local_block(ban_interface_0_ap_local_block),
        .ap_local_deadlock(ban_interface_0_ap_local_deadlock),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_return(ban_interface_0_ap_return),
        .ap_rst(rst_clk_wiz_100M_peripheral_reset),
        .ap_start(ap_ctrl_0_1_start),
        .b_op1(b_op1_0_1),
        .b_op2(b_op2_0_1),
        .f_op(f_op_0_1),
        .op(op_0_1));
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_1));
  design_1_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_clk_wiz_100M_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule
