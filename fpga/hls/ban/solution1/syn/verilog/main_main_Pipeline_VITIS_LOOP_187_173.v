// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_187_173 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        b8_num_2_0_reload,
        b8_num_1_0_reload,
        b8_num_0_0_reload,
        b8_num_load_2_reload,
        b8_num_load_1_reload,
        b8_num_load_reload,
        aux_address0,
        aux_ce0,
        aux_q0,
        b8_num_2_2_out,
        b8_num_2_2_out_ap_vld,
        b8_num_1_2_out,
        b8_num_1_2_out_ap_vld,
        b8_num_0_2_out,
        b8_num_0_2_out_ap_vld,
        b8_num_load_6970_out,
        b8_num_load_6970_out_ap_vld,
        b8_num_load_5962_out,
        b8_num_load_5962_out_ap_vld,
        b8_num_load_3_out,
        b8_num_load_3_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b8_num_2_0_reload;
input  [31:0] b8_num_1_0_reload;
input  [31:0] b8_num_0_0_reload;
input  [31:0] b8_num_load_2_reload;
input  [31:0] b8_num_load_1_reload;
input  [31:0] b8_num_load_reload;
output  [2:0] aux_address0;
output   aux_ce0;
input  [31:0] aux_q0;
output  [31:0] b8_num_2_2_out;
output   b8_num_2_2_out_ap_vld;
output  [31:0] b8_num_1_2_out;
output   b8_num_1_2_out_ap_vld;
output  [31:0] b8_num_0_2_out;
output   b8_num_0_2_out_ap_vld;
output  [31:0] b8_num_load_6970_out;
output   b8_num_load_6970_out_ap_vld;
output  [31:0] b8_num_load_5962_out;
output   b8_num_load_5962_out_ap_vld;
output  [31:0] b8_num_load_3_out;
output   b8_num_load_3_out_ap_vld;

reg ap_idle;
reg aux_ce0;
reg b8_num_2_2_out_ap_vld;
reg b8_num_1_2_out_ap_vld;
reg b8_num_0_2_out_ap_vld;
reg b8_num_load_6970_out_ap_vld;
reg b8_num_load_5962_out_ap_vld;
reg b8_num_load_3_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln187_fu_213_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_57_reg_338;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] trunc_ln188_3_cast_fu_225_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_56;
wire   [1:0] add_ln187_fu_219_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_57;
reg   [31:0] b8_num_1_fu_60;
reg   [31:0] b8_num_1_15_fu_64;
reg   [31:0] b8_num_1_16_fu_68;
reg   [31:0] b8_num_1_17_fu_72;
reg   [31:0] b8_num_1_2_fu_76;
reg   [31:0] b8_num_1_18_fu_80;
wire    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_194;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_15_fu_64 <= b8_num_load_1_reload;
        end else if (((i_57_reg_338 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            b8_num_1_15_fu_64 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_16_fu_68 <= b8_num_load_2_reload;
        end else if ((1'b1 == ap_condition_194)) begin
            b8_num_1_16_fu_68 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_17_fu_72 <= b8_num_0_0_reload;
        end else if (((i_57_reg_338 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            b8_num_1_17_fu_72 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_18_fu_80 <= b8_num_2_0_reload;
        end else if ((1'b1 == ap_condition_194)) begin
            b8_num_1_18_fu_80 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_2_fu_76 <= b8_num_1_0_reload;
        end else if (((i_57_reg_338 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            b8_num_1_2_fu_76 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b8_num_1_fu_60 <= b8_num_load_reload;
        end else if (((i_57_reg_338 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            b8_num_1_fu_60 <= aux_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln187_fu_213_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_56 <= add_ln187_fu_219_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_57_reg_338 <= ap_sig_allocacmp_i_57;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_57 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_57 = i_fu_56;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aux_ce0 = 1'b1;
    end else begin
        aux_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_0_2_out_ap_vld = 1'b1;
    end else begin
        b8_num_0_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_1_2_out_ap_vld = 1'b1;
    end else begin
        b8_num_1_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_2_2_out_ap_vld = 1'b1;
    end else begin
        b8_num_2_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_load_3_out_ap_vld = 1'b1;
    end else begin
        b8_num_load_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_load_5962_out_ap_vld = 1'b1;
    end else begin
        b8_num_load_5962_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b8_num_load_6970_out_ap_vld = 1'b1;
    end else begin
        b8_num_load_6970_out_ap_vld = 1'b0;
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

assign add_ln187_fu_219_p2 = (ap_sig_allocacmp_i_57 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_194 = (~(i_57_reg_338 == 2'd1) & ~(i_57_reg_338 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign aux_address0 = trunc_ln188_3_cast_fu_225_p1;

assign b8_num_0_2_out = b8_num_1_17_fu_72;

assign b8_num_1_2_out = b8_num_1_2_fu_76;

assign b8_num_2_2_out = b8_num_1_18_fu_80;

assign b8_num_load_3_out = b8_num_1_fu_60;

assign b8_num_load_5962_out = b8_num_1_15_fu_64;

assign b8_num_load_6970_out = b8_num_1_16_fu_68;

assign icmp_ln187_fu_213_p2 = ((ap_sig_allocacmp_i_57 == 2'd3) ? 1'b1 : 1'b0);

assign trunc_ln188_3_cast_fu_225_p1 = ap_sig_allocacmp_i_57;

endmodule //main_main_Pipeline_VITIS_LOOP_187_173
