// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_82_150 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sub_ln535,
        b_num_address0,
        b_num_ce0,
        b_num_q0,
        idx_tmp_42_out,
        idx_tmp_42_out_ap_vld,
        grp_fu_4230_p_din0,
        grp_fu_4230_p_din1,
        grp_fu_4230_p_opcode,
        grp_fu_4230_p_dout0,
        grp_fu_4230_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] sub_ln535;
output  [5:0] b_num_address0;
output   b_num_ce0;
input  [31:0] b_num_q0;
output  [31:0] idx_tmp_42_out;
output   idx_tmp_42_out_ap_vld;
output  [31:0] grp_fu_4230_p_din0;
output  [31:0] grp_fu_4230_p_din1;
output  [4:0] grp_fu_4230_p_opcode;
input  [0:0] grp_fu_4230_p_dout0;
output   grp_fu_4230_p_ce;

reg ap_idle;
reg b_num_ce0;
reg idx_tmp_42_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln82_fu_99_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] idx_reg_238;
reg   [0:0] icmp_ln82_reg_244;
reg   [31:0] idx_tmp_load_15_reg_253;
wire   [0:0] icmp_ln83_8_fu_123_p2;
reg   [0:0] icmp_ln83_8_reg_258;
wire   [1:0] idx_104_fu_129_p2;
reg   [1:0] idx_104_reg_264;
wire   [0:0] icmp_ln83_fu_152_p2;
reg   [0:0] icmp_ln83_reg_274;
wire   [0:0] icmp_ln83_18_fu_158_p2;
reg   [0:0] icmp_ln83_18_reg_279;
wire   [63:0] zext_ln83_4_fu_115_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] idx_72_fu_46;
wire   [1:0] idx_103_fu_164_p3;
reg   [1:0] ap_sig_allocacmp_idx;
wire    ap_loop_init;
reg   [31:0] idx_tmp_fu_50;
wire   [31:0] idx_105_fu_208_p3;
reg   [31:0] ap_sig_allocacmp_idx_tmp_load_15;
wire    ap_block_pp0_stage0_01001;
wire   [5:0] zext_ln83_fu_105_p1;
wire   [5:0] add_ln83_fu_109_p2;
wire   [31:0] bitcast_ln83_fu_134_p1;
wire   [7:0] tmp_s_fu_138_p4;
wire   [22:0] trunc_ln83_fu_148_p1;
wire   [0:0] or_ln83_fu_176_p2;
wire   [0:0] and_ln83_fu_180_p2;
wire   [0:0] xor_ln83_fu_186_p2;
wire   [0:0] and_ln83_11_fu_192_p2;
wire   [1:0] idx_101_fu_197_p3;
wire   [31:0] zext_ln79_fu_204_p1;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            idx_72_fu_46 <= 2'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            idx_72_fu_46 <= idx_103_fu_164_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_tmp_fu_50 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_tmp_fu_50 <= idx_105_fu_208_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln82_reg_244 <= icmp_ln82_fu_99_p2;
        icmp_ln83_18_reg_279 <= icmp_ln83_18_fu_158_p2;
        icmp_ln83_8_reg_258 <= icmp_ln83_8_fu_123_p2;
        icmp_ln83_reg_274 <= icmp_ln83_fu_152_p2;
        idx_104_reg_264 <= idx_104_fu_129_p2;
        idx_reg_238 <= ap_sig_allocacmp_idx;
        idx_tmp_load_15_reg_253 <= ap_sig_allocacmp_idx_tmp_load_15;
    end
end

always @ (*) begin
    if (((icmp_ln82_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_idx = 2'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_idx = idx_103_fu_164_p3;
        end else begin
            ap_sig_allocacmp_idx = idx_72_fu_46;
        end
    end else begin
        ap_sig_allocacmp_idx = idx_72_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_idx_tmp_load_15 = idx_105_fu_208_p3;
    end else begin
        ap_sig_allocacmp_idx_tmp_load_15 = idx_tmp_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_num_ce0 = 1'b1;
    end else begin
        b_num_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln82_reg_244 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx_tmp_42_out_ap_vld = 1'b1;
    end else begin
        idx_tmp_42_out_ap_vld = 1'b0;
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

assign add_ln83_fu_109_p2 = (sub_ln535 + zext_ln83_fu_105_p1);

assign and_ln83_11_fu_192_p2 = (xor_ln83_fu_186_p2 & icmp_ln83_8_reg_258);

assign and_ln83_fu_180_p2 = (or_ln83_fu_176_p2 & grp_fu_4230_p_dout0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign b_num_address0 = zext_ln83_4_fu_115_p1;

assign bitcast_ln83_fu_134_p1 = b_num_q0;

assign grp_fu_4230_p_ce = 1'b1;

assign grp_fu_4230_p_din0 = b_num_q0;

assign grp_fu_4230_p_din1 = 32'd0;

assign grp_fu_4230_p_opcode = 5'd1;

assign icmp_ln82_fu_99_p2 = ((ap_sig_allocacmp_idx == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln83_18_fu_158_p2 = ((trunc_ln83_fu_148_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln83_8_fu_123_p2 = ((ap_sig_allocacmp_idx_tmp_load_15 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln83_fu_152_p2 = ((tmp_s_fu_138_p4 != 8'd255) ? 1'b1 : 1'b0);

assign idx_101_fu_197_p3 = ((and_ln83_11_fu_192_p2[0:0] == 1'b1) ? idx_104_reg_264 : 2'd0);

assign idx_103_fu_164_p3 = ((icmp_ln83_8_fu_123_p2[0:0] == 1'b1) ? idx_104_fu_129_p2 : idx_reg_238);

assign idx_104_fu_129_p2 = (idx_reg_238 + 2'd1);

assign idx_105_fu_208_p3 = ((icmp_ln83_8_reg_258[0:0] == 1'b1) ? zext_ln79_fu_204_p1 : idx_tmp_load_15_reg_253);

assign idx_tmp_42_out = idx_tmp_fu_50;

assign or_ln83_fu_176_p2 = (icmp_ln83_reg_274 | icmp_ln83_18_reg_279);

assign tmp_s_fu_138_p4 = {{bitcast_ln83_fu_134_p1[30:23]}};

assign trunc_ln83_fu_148_p1 = bitcast_ln83_fu_134_p1[22:0];

assign xor_ln83_fu_186_p2 = (1'd1 ^ and_ln83_fu_180_p2);

assign zext_ln79_fu_204_p1 = idx_101_fu_197_p3;

assign zext_ln83_4_fu_115_p1 = add_ln83_fu_109_p2;

assign zext_ln83_fu_105_p1 = ap_sig_allocacmp_idx;

endmodule //main_main_Pipeline_VITIS_LOOP_82_150
