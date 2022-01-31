// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jan 31 16:30:56 2022
// Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode funcsim
//               /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,main,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "main,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (ap_local_block,
    ap_local_deadlock,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return);
  output ap_local_block;
  output ap_local_deadlock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [31:0]ap_return;

  wire \<const0> ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire NLW_inst_ap_local_block_UNCONNECTED;
  wire NLW_inst_ap_local_deadlock_UNCONNECTED;
  wire [31:0]NLW_inst_ap_return_UNCONNECTED;

  assign ap_local_block = \<const0> ;
  assign ap_local_deadlock = \<const0> ;
  assign ap_return[31] = \<const0> ;
  assign ap_return[30] = \<const0> ;
  assign ap_return[29] = \<const0> ;
  assign ap_return[28] = \<const0> ;
  assign ap_return[27] = \<const0> ;
  assign ap_return[26] = \<const0> ;
  assign ap_return[25] = \<const0> ;
  assign ap_return[24] = \<const0> ;
  assign ap_return[23] = \<const0> ;
  assign ap_return[22] = \<const0> ;
  assign ap_return[21] = \<const0> ;
  assign ap_return[20] = \<const0> ;
  assign ap_return[19] = \<const0> ;
  assign ap_return[18] = \<const0> ;
  assign ap_return[17] = \<const0> ;
  assign ap_return[16] = \<const0> ;
  assign ap_return[15] = \<const0> ;
  assign ap_return[14] = \<const0> ;
  assign ap_return[13] = \<const0> ;
  assign ap_return[12] = \<const0> ;
  assign ap_return[11] = \<const0> ;
  assign ap_return[10] = \<const0> ;
  assign ap_return[9] = \<const0> ;
  assign ap_return[8] = \<const0> ;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  bd_0_hls_inst_0_main inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_local_block(NLW_inst_ap_local_block_UNCONNECTED),
        .ap_local_deadlock(NLW_inst_ap_local_deadlock_UNCONNECTED),
        .ap_ready(ap_ready),
        .ap_return(NLW_inst_ap_return_UNCONNECTED[31:0]),
        .ap_rst(ap_rst),
        .ap_start(ap_start));
endmodule

(* ORIG_REF_NAME = "main" *) (* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) 
(* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_main
   (ap_local_block,
    ap_local_deadlock,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return);
  output ap_local_block;
  output ap_local_deadlock;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_2_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5;
  wire grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
  wire grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4;

  assign ap_done = ap_ready;
  assign ap_local_block = \<const0> ;
  assign ap_local_deadlock = \<const0> ;
  assign ap_return[31] = \<const0> ;
  assign ap_return[30] = \<const0> ;
  assign ap_return[29] = \<const0> ;
  assign ap_return[28] = \<const0> ;
  assign ap_return[27] = \<const0> ;
  assign ap_return[26] = \<const0> ;
  assign ap_return[25] = \<const0> ;
  assign ap_return[24] = \<const0> ;
  assign ap_return[23] = \<const0> ;
  assign ap_return[22] = \<const0> ;
  assign ap_return[21] = \<const0> ;
  assign ap_return[20] = \<const0> ;
  assign ap_return[19] = \<const0> ;
  assign ap_return[18] = \<const0> ;
  assign ap_return[17] = \<const0> ;
  assign ap_return[16] = \<const0> ;
  assign ap_return[15] = \<const0> ;
  assign ap_return[14] = \<const0> ;
  assign ap_return[13] = \<const0> ;
  assign ap_return[12] = \<const0> ;
  assign ap_return[11] = \<const0> ;
  assign ap_return[10] = \<const0> ;
  assign ap_return[9] = \<const0> ;
  assign ap_return[8] = \<const0> ;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_2_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_2_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1 grp_main_Pipeline_VITIS_LOOP_142_1_fu_33
       (.D({ap_NS_fsm[3],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,\ap_CS_fsm_reg_n_2_[0] }),
        .\ap_CS_fsm_reg[2] (grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5),
        .ap_clk(ap_clk),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg));
  FDRE #(
    .INIT(1'b0)) 
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5),
        .Q(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .R(ap_rst));
  bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1 grp_main_Pipeline_VITIS_LOOP_21_1_fu_26
       (.D(ap_NS_fsm[2:1]),
        .Q({ap_CS_fsm_state2,\ap_CS_fsm_reg_n_2_[0] }),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_start_0(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4),
        .grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg));
  FDRE #(
    .INIT(1'b0)) 
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4),
        .Q(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .R(ap_rst));
endmodule

(* ORIG_REF_NAME = "main_flow_control_loop_pipe_sequential_init" *) 
module bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init
   (E,
    D,
    ap_start_0,
    \i_fu_40_reg[1] ,
    ap_rst,
    ap_clk,
    Q,
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
    \ap_CS_fsm_reg[2] ,
    ap_start);
  output [0:0]E;
  output [1:0]D;
  output ap_start_0;
  output [1:0]\i_fu_40_reg[1] ;
  input ap_rst;
  input ap_clk;
  input [1:0]Q;
  input grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input ap_start;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_2;
  wire ap_done_reg1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_2;
  wire ap_rst;
  wire ap_start;
  wire ap_start_0;
  wire grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
  wire [1:0]\i_fu_40_reg[1] ;

  LUT6 #(
    .INIT(64'h88888888F8F888F8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [0]),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg[2] [1]),
        .I3(ap_done_cache),
        .I4(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I5(ap_done_reg1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I3(Q[1]),
        .O(ap_done_reg1));
  LUT6 #(
    .INIT(64'h20FF200000000000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[2] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20FF2000)) 
    ap_done_cache_i_1
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_2),
        .Q(ap_done_cache),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF2C0C)) 
    ap_loop_init_int_i_1
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I3(Q[1]),
        .I4(ap_rst),
        .O(ap_loop_init_int_i_1_n_2));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_2),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF8F8888FFFF8888)) 
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg_i_1
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[2] [0]),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .I4(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I5(Q[1]),
        .O(ap_start_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_40[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .O(\i_fu_40_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hD0F0)) 
    \i_fu_40[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .I3(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_40[1]_i_2 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .O(\i_fu_40_reg[1] [1]));
endmodule

(* ORIG_REF_NAME = "main_flow_control_loop_pipe_sequential_init" *) 
module bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0
   (SR,
    D,
    ap_ready,
    ap_rst,
    ap_clk,
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
    Q,
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready,
    ap_start,
    ap_enable_reg_pp0_iter1,
    ap_done_cache_reg_0);
  output [0:0]SR;
  output [1:0]D;
  output ap_ready;
  input ap_rst;
  input ap_clk;
  input grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;
  input [2:0]Q;
  input grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready;
  input ap_start;
  input ap_enable_reg_pp0_iter1;
  input [1:0]ap_done_cache_reg_0;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_2;
  wire [1:0]ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_2;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;

  LUT6 #(
    .INIT(64'hF2F2F2F22222F222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(Q[2]),
        .I3(ap_done_cache),
        .I4(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I5(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAAAEEAE)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(ap_done_cache),
        .I3(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I4(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_cache_reg_0[0]),
        .I1(ap_done_cache_reg_0[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_2),
        .Q(ap_done_cache),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4444444)) 
    ap_loop_init_int_i_1__0
       (.I0(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_done_cache_reg_0[1]),
        .I4(ap_done_cache_reg_0[0]),
        .I5(ap_rst),
        .O(ap_loop_init_int_i_1__0_n_2));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_2),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA08080808080808)) 
    ap_ready_INST_0
       (.I0(Q[2]),
        .I1(ap_done_cache),
        .I2(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_cache_reg_0[1]),
        .I5(ap_done_cache_reg_0[0]),
        .O(ap_ready));
  LUT2 #(
    .INIT(4'h8)) 
    \i_1_fu_36[1]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "main_main_Pipeline_VITIS_LOOP_142_1" *) 
module bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1
   (D,
    ap_ready,
    \ap_CS_fsm_reg[2] ,
    ap_rst,
    ap_clk,
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
    Q,
    ap_start);
  output [1:0]D;
  output ap_ready;
  output \ap_CS_fsm_reg[2] ;
  input ap_rst;
  input ap_clk;
  input grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;
  input [2:0]Q;
  input ap_start;

  wire [1:0]D;
  wire [2:0]Q;
  wire [1:0]add_ln142_fu_99_p2;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_2;
  wire ap_loop_init;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready;
  wire grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;
  wire \i_1_fu_36[1]_i_2_n_2 ;
  wire \i_1_fu_36_reg_n_2_[0] ;
  wire \i_1_fu_36_reg_n_2_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\i_1_fu_36_reg_n_2_[1] ),
        .I2(\i_1_fu_36_reg_n_2_[0] ),
        .O(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002AAA)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\i_1_fu_36_reg_n_2_[1] ),
        .I3(\i_1_fu_36_reg_n_2_[0] ),
        .I4(ap_rst),
        .O(ap_enable_reg_pp0_iter1_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .SR(ap_loop_init),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0({\i_1_fu_36_reg_n_2_[1] ,\i_1_fu_36_reg_n_2_[0] }),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready),
        .grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(\i_1_fu_36_reg_n_2_[0] ),
        .I2(\i_1_fu_36_reg_n_2_[1] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_1_fu_36[0]_i_1 
       (.I0(\i_1_fu_36_reg_n_2_[0] ),
        .O(add_ln142_fu_99_p2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_1_fu_36[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\i_1_fu_36_reg_n_2_[1] ),
        .I2(\i_1_fu_36_reg_n_2_[0] ),
        .O(\i_1_fu_36[1]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_1_fu_36[1]_i_3 
       (.I0(\i_1_fu_36_reg_n_2_[0] ),
        .I1(\i_1_fu_36_reg_n_2_[1] ),
        .O(add_ln142_fu_99_p2[1]));
  FDRE \i_1_fu_36_reg[0] 
       (.C(ap_clk),
        .CE(\i_1_fu_36[1]_i_2_n_2 ),
        .D(add_ln142_fu_99_p2[0]),
        .Q(\i_1_fu_36_reg_n_2_[0] ),
        .R(ap_loop_init));
  FDRE \i_1_fu_36_reg[1] 
       (.C(ap_clk),
        .CE(\i_1_fu_36[1]_i_2_n_2 ),
        .D(add_ln142_fu_99_p2[1]),
        .Q(\i_1_fu_36_reg_n_2_[1] ),
        .R(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "main_main_Pipeline_VITIS_LOOP_21_1" *) 
module bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1
   (D,
    ap_start_0,
    ap_rst,
    ap_clk,
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
    Q,
    ap_start);
  output [1:0]D;
  output ap_start_0;
  input ap_rst;
  input ap_clk;
  input grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
  input [1:0]Q;
  input ap_start;

  wire [1:0]D;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst;
  wire ap_start;
  wire ap_start_0;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
  wire i_fu_40;
  wire \i_fu_40_reg_n_2_[0] ;
  wire \i_fu_40_reg_n_2_[1] ;

  bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .E(i_fu_40),
        .Q({\i_fu_40_reg_n_2_[1] ,\i_fu_40_reg_n_2_[0] }),
        .\ap_CS_fsm_reg[2] (Q),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_start_0(ap_start_0),
        .grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg),
        .\i_fu_40_reg[1] ({flow_control_loop_pipe_sequential_init_U_n_6,flow_control_loop_pipe_sequential_init_U_n_7}));
  FDRE \i_fu_40_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_40),
        .D(flow_control_loop_pipe_sequential_init_U_n_7),
        .Q(\i_fu_40_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \i_fu_40_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_40),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(\i_fu_40_reg_n_2_[1] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
