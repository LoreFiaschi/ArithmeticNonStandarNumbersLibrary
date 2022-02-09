// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ban_interface_operator_Pipeline_VITIS_LOOP_504_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sub_i1,
        trunc_ln507_1,
        p_read3,
        p_read10,
        p_read11,
        num_res_1_02_out,
        num_res_1_02_out_ap_vld,
        num_res_2_01_out,
        num_res_2_01_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sub_i1;
input  [1:0] trunc_ln507_1;
input  [31:0] p_read3;
input  [31:0] p_read10;
input  [31:0] p_read11;
output  [31:0] num_res_1_02_out;
output   num_res_1_02_out_ap_vld;
output  [31:0] num_res_2_01_out;
output   num_res_2_01_out_ap_vld;

reg ap_idle;
reg num_res_1_02_out_ap_vld;
reg num_res_2_01_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln504_fu_116_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_fu_52;
wire   [1:0] add_ln504_fu_186_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_6;
reg   [31:0] num_res_2_fu_56;
wire   [31:0] num_res_2_4_fu_178_p3;
reg   [31:0] num_res_2_1_fu_60;
wire   [31:0] num_res_2_3_fu_170_p3;
wire   [31:0] i_cast_fu_128_p1;
wire   [1:0] tmp_s_fu_144_p4;
wire   [0:0] icmp_ln506_fu_132_p2;
wire   [31:0] tmp_s_fu_144_p5;
wire   [0:0] icmp_ln507_fu_164_p2;
wire   [31:0] num_res_1_fu_156_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

ban_interface_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U168(
    .din0(p_read3),
    .din1(p_read10),
    .din2(p_read11),
    .din3(tmp_s_fu_144_p4),
    .dout(tmp_s_fu_144_p5)
);

ban_interface_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln504_fu_116_p2 == 1'd0)) begin
            i_fu_52 <= add_ln504_fu_186_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_52 <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln504_fu_116_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        num_res_2_1_fu_60 <= num_res_2_3_fu_170_p3;
        num_res_2_fu_56 <= num_res_2_4_fu_178_p3;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln504_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_6 = 2'd2;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_52;
    end
end

always @ (*) begin
    if (((icmp_ln504_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        num_res_1_02_out_ap_vld = 1'b1;
    end else begin
        num_res_1_02_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln504_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        num_res_2_01_out_ap_vld = 1'b1;
    end else begin
        num_res_2_01_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln504_fu_186_p2 = ($signed(ap_sig_allocacmp_i_6) + $signed(2'd3));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_cast_fu_128_p1 = ap_sig_allocacmp_i_6;

assign icmp_ln504_fu_116_p2 = ((ap_sig_allocacmp_i_6 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln506_fu_132_p2 = ((i_cast_fu_128_p1 < sub_i1) ? 1'b1 : 1'b0);

assign icmp_ln507_fu_164_p2 = ((ap_sig_allocacmp_i_6 == 2'd1) ? 1'b1 : 1'b0);

assign num_res_1_02_out = num_res_2_1_fu_60;

assign num_res_1_fu_156_p3 = ((icmp_ln506_fu_132_p2[0:0] == 1'b1) ? 32'd0 : tmp_s_fu_144_p5);

assign num_res_2_01_out = num_res_2_fu_56;

assign num_res_2_3_fu_170_p3 = ((icmp_ln507_fu_164_p2[0:0] == 1'b1) ? num_res_1_fu_156_p3 : num_res_2_1_fu_60);

assign num_res_2_4_fu_178_p3 = ((icmp_ln507_fu_164_p2[0:0] == 1'b1) ? num_res_2_fu_56 : num_res_1_fu_156_p3);

assign tmp_s_fu_144_p4 = (ap_sig_allocacmp_i_6 + trunc_ln507_1);

endmodule //ban_interface_operator_Pipeline_VITIS_LOOP_504_1