// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_mul_body_1_Pipeline_VITIS_LOOP_104_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        agg_result_num_4,
        agg_result_num12_4,
        agg_result_num2_4,
        zext_ln104,
        zext_ln104_12,
        agg_result_num_5_out,
        agg_result_num_5_out_ap_vld,
        agg_result_num12_5_out,
        agg_result_num12_5_out_ap_vld,
        agg_result_num2_5_out,
        agg_result_num2_5_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] agg_result_num_4;
input  [31:0] agg_result_num12_4;
input  [31:0] agg_result_num2_4;
input  [1:0] zext_ln104;
input  [2:0] zext_ln104_12;
output  [31:0] agg_result_num_5_out;
output   agg_result_num_5_out_ap_vld;
output  [31:0] agg_result_num12_5_out;
output   agg_result_num12_5_out_ap_vld;
output  [31:0] agg_result_num2_5_out;
output   agg_result_num2_5_out_ap_vld;

reg ap_idle;
reg agg_result_num_5_out_ap_vld;
reg agg_result_num12_5_out_ap_vld;
reg agg_result_num2_5_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln104_fu_144_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln104_12_cast_fu_113_p1;
reg   [63:0] zext_ln104_12_cast_reg_219;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] base_fu_46;
wire   [63:0] add_ln105_fu_149_p2;
wire   [63:0] zext_ln104_cast_fu_117_p1;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [31:0] agg_result_num2_5_fu_50;
wire   [1:0] trunc_ln105_fu_155_p1;
reg   [31:0] agg_result_num12_5_fu_54;
reg   [31:0] agg_result_num_5_fu_58;
wire    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_169;
reg    ap_condition_173;
reg    ap_condition_176;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            agg_result_num12_5_fu_54 <= agg_result_num12_4;
        end else if ((1'b1 == ap_condition_169)) begin
            agg_result_num12_5_fu_54 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            agg_result_num2_5_fu_50 <= agg_result_num2_4;
        end else if ((1'b1 == ap_condition_173)) begin
            agg_result_num2_5_fu_50 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            agg_result_num_5_fu_58 <= agg_result_num_4;
        end else if ((1'b1 == ap_condition_176)) begin
            agg_result_num_5_fu_58 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            base_fu_46 <= zext_ln104_cast_fu_117_p1;
        end else if (((icmp_ln104_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            base_fu_46 <= add_ln105_fu_149_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln104_12_cast_reg_219[2 : 0] <= zext_ln104_12_cast_fu_113_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        agg_result_num12_5_out_ap_vld = 1'b1;
    end else begin
        agg_result_num12_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        agg_result_num2_5_out_ap_vld = 1'b1;
    end else begin
        agg_result_num2_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        agg_result_num_5_out_ap_vld = 1'b1;
    end else begin
        agg_result_num_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln105_fu_149_p2 = (base_fu_46 + 64'd1);

assign agg_result_num12_5_out = agg_result_num12_5_fu_54;

assign agg_result_num2_5_out = agg_result_num2_5_fu_50;

assign agg_result_num_5_out = agg_result_num_5_fu_58;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_169 = ((trunc_ln105_fu_155_p1 == 2'd1) & (icmp_ln104_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_173 = (~(trunc_ln105_fu_155_p1 == 2'd1) & ~(trunc_ln105_fu_155_p1 == 2'd0) & (icmp_ln104_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_176 = ((trunc_ln105_fu_155_p1 == 2'd0) & (icmp_ln104_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln104_fu_144_p2 = ((base_fu_46 == zext_ln104_12_cast_reg_219) ? 1'b1 : 1'b0);

assign trunc_ln105_fu_155_p1 = base_fu_46[1:0];

assign zext_ln104_12_cast_fu_113_p1 = zext_ln104_12;

assign zext_ln104_cast_fu_117_p1 = zext_ln104;

always @ (posedge ap_clk) begin
    zext_ln104_12_cast_reg_219[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //main_mul_body_1_Pipeline_VITIS_LOOP_104_3
