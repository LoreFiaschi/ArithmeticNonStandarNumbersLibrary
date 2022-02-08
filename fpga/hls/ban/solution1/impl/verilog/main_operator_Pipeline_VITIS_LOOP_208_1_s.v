// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_operator_Pipeline_VITIS_LOOP_208_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read14,
        p_read25,
        p_read3,
        den_norm_1_07_out,
        den_norm_1_07_out_ap_vld,
        den_norm_2_06_out,
        den_norm_2_06_out_ap_vld,
        den_norm_25_out,
        den_norm_25_out_ap_vld,
        den_norm_14_out,
        den_norm_14_out_ap_vld,
        grp_fu_342_p_din0,
        grp_fu_342_p_din1,
        grp_fu_342_p_dout0,
        grp_fu_342_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read14;
input  [31:0] p_read25;
input  [31:0] p_read3;
output  [31:0] den_norm_1_07_out;
output   den_norm_1_07_out_ap_vld;
output  [31:0] den_norm_2_06_out;
output   den_norm_2_06_out_ap_vld;
output  [31:0] den_norm_25_out;
output   den_norm_25_out_ap_vld;
output  [31:0] den_norm_14_out;
output   den_norm_14_out_ap_vld;
output  [31:0] grp_fu_342_p_din0;
output  [31:0] grp_fu_342_p_din1;
input  [31:0] grp_fu_342_p_dout0;
output   grp_fu_342_p_ce;

reg ap_idle;
reg den_norm_1_07_out_ap_vld;
reg den_norm_2_06_out_ap_vld;
reg den_norm_25_out_ap_vld;
reg den_norm_14_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln208_fu_120_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln208_reg_277;
reg   [0:0] icmp_ln208_reg_277_pp0_iter1_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter2_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter3_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter4_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter5_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter6_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter7_reg;
reg   [0:0] icmp_ln208_reg_277_pp0_iter8_reg;
wire   [0:0] icmp_ln209_fu_126_p2;
reg   [0:0] icmp_ln209_reg_281;
reg   [0:0] icmp_ln209_reg_281_pp0_iter1_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter2_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter3_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter4_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter5_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter6_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter7_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter8_reg;
reg   [0:0] icmp_ln209_reg_281_pp0_iter9_reg;
wire   [31:0] xor_ln209_fu_144_p2;
reg   [31:0] xor_ln209_reg_289;
wire   [31:0] bitcast_ln209_1_fu_161_p1;
reg   [31:0] den_norm_2_reg_299;
reg   [1:0] i_fu_42;
wire   [1:0] add_ln208_fu_150_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
reg   [31:0] den_norm_14_fu_46;
wire   [31:0] select_ln209_4_fu_195_p3;
reg   [31:0] den_norm_25_fu_50;
wire   [31:0] select_ln209_3_fu_189_p3;
reg   [31:0] den_norm_2_06_fu_54;
wire   [31:0] select_ln209_2_fu_183_p3;
reg   [31:0] den_norm_1_07_fu_58;
wire   [31:0] select_ln209_1_fu_177_p3;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] select_ln209_fu_132_p3;
wire   [31:0] bitcast_ln209_fu_140_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_done_reg = 1'b0;
end

main_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln208_fu_120_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_42 <= add_ln208_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_42 <= 2'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln208_reg_277 <= icmp_ln208_fu_120_p2;
        icmp_ln208_reg_277_pp0_iter1_reg <= icmp_ln208_reg_277;
        icmp_ln209_reg_281_pp0_iter1_reg <= icmp_ln209_reg_281;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        den_norm_2_reg_299 <= grp_fu_342_p_dout0;
        icmp_ln208_reg_277_pp0_iter2_reg <= icmp_ln208_reg_277_pp0_iter1_reg;
        icmp_ln208_reg_277_pp0_iter3_reg <= icmp_ln208_reg_277_pp0_iter2_reg;
        icmp_ln208_reg_277_pp0_iter4_reg <= icmp_ln208_reg_277_pp0_iter3_reg;
        icmp_ln208_reg_277_pp0_iter5_reg <= icmp_ln208_reg_277_pp0_iter4_reg;
        icmp_ln208_reg_277_pp0_iter6_reg <= icmp_ln208_reg_277_pp0_iter5_reg;
        icmp_ln208_reg_277_pp0_iter7_reg <= icmp_ln208_reg_277_pp0_iter6_reg;
        icmp_ln208_reg_277_pp0_iter8_reg <= icmp_ln208_reg_277_pp0_iter7_reg;
        icmp_ln209_reg_281_pp0_iter2_reg <= icmp_ln209_reg_281_pp0_iter1_reg;
        icmp_ln209_reg_281_pp0_iter3_reg <= icmp_ln209_reg_281_pp0_iter2_reg;
        icmp_ln209_reg_281_pp0_iter4_reg <= icmp_ln209_reg_281_pp0_iter3_reg;
        icmp_ln209_reg_281_pp0_iter5_reg <= icmp_ln209_reg_281_pp0_iter4_reg;
        icmp_ln209_reg_281_pp0_iter6_reg <= icmp_ln209_reg_281_pp0_iter5_reg;
        icmp_ln209_reg_281_pp0_iter7_reg <= icmp_ln209_reg_281_pp0_iter6_reg;
        icmp_ln209_reg_281_pp0_iter8_reg <= icmp_ln209_reg_281_pp0_iter7_reg;
        icmp_ln209_reg_281_pp0_iter9_reg <= icmp_ln209_reg_281_pp0_iter8_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        den_norm_14_fu_46 <= select_ln209_4_fu_195_p3;
        den_norm_1_07_fu_58 <= select_ln209_1_fu_177_p3;
        den_norm_25_fu_50 <= select_ln209_3_fu_189_p3;
        den_norm_2_06_fu_54 <= select_ln209_2_fu_183_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln208_fu_120_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln209_reg_281 <= icmp_ln209_fu_126_p2;
        xor_ln209_reg_289 <= xor_ln209_fu_144_p2;
    end
end

always @ (*) begin
    if (((icmp_ln208_fu_120_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 2'd1;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_42;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln208_reg_277_pp0_iter8_reg == 1'd1))) begin
        den_norm_14_out_ap_vld = 1'b1;
    end else begin
        den_norm_14_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln208_reg_277_pp0_iter8_reg == 1'd1))) begin
        den_norm_1_07_out_ap_vld = 1'b1;
    end else begin
        den_norm_1_07_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln208_reg_277_pp0_iter8_reg == 1'd1))) begin
        den_norm_25_out_ap_vld = 1'b1;
    end else begin
        den_norm_25_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln208_reg_277_pp0_iter8_reg == 1'd1))) begin
        den_norm_2_06_out_ap_vld = 1'b1;
    end else begin
        den_norm_2_06_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln208_fu_150_p2 = (ap_sig_allocacmp_i_2 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln209_1_fu_161_p1 = xor_ln209_reg_289;

assign bitcast_ln209_fu_140_p1 = select_ln209_fu_132_p3;

assign den_norm_14_out = den_norm_14_fu_46;

assign den_norm_1_07_out = den_norm_1_07_fu_58;

assign den_norm_25_out = den_norm_25_fu_50;

assign den_norm_2_06_out = den_norm_2_06_fu_54;

assign grp_fu_342_p_ce = 1'b1;

assign grp_fu_342_p_din0 = bitcast_ln209_1_fu_161_p1;

assign grp_fu_342_p_din1 = p_read3;

assign icmp_ln208_fu_120_p2 = ((ap_sig_allocacmp_i_2 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln209_fu_126_p2 = ((ap_sig_allocacmp_i_2 == 2'd1) ? 1'b1 : 1'b0);

assign select_ln209_1_fu_177_p3 = ((icmp_ln209_reg_281_pp0_iter9_reg[0:0] == 1'b1) ? den_norm_2_reg_299 : den_norm_1_07_fu_58);

assign select_ln209_2_fu_183_p3 = ((icmp_ln209_reg_281_pp0_iter9_reg[0:0] == 1'b1) ? den_norm_2_06_fu_54 : den_norm_2_reg_299);

assign select_ln209_3_fu_189_p3 = ((icmp_ln209_reg_281_pp0_iter9_reg[0:0] == 1'b1) ? den_norm_25_fu_50 : den_norm_2_reg_299);

assign select_ln209_4_fu_195_p3 = ((icmp_ln209_reg_281_pp0_iter9_reg[0:0] == 1'b1) ? den_norm_2_reg_299 : den_norm_14_fu_46);

assign select_ln209_fu_132_p3 = ((icmp_ln209_fu_126_p2[0:0] == 1'b1) ? p_read14 : p_read25);

assign xor_ln209_fu_144_p2 = (bitcast_ln209_fu_140_p1 ^ 32'd2147483648);

endmodule //main_operator_Pipeline_VITIS_LOOP_208_1_s
