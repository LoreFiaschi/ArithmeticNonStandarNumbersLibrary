// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_operator_1_2_Pipeline_VITIS_LOOP_84_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp,
        tmp_43,
        tmp_44,
        idx_tmp_out,
        idx_tmp_out_ap_vld,
        grp_fu_732_p_din0,
        grp_fu_732_p_din1,
        grp_fu_732_p_opcode,
        grp_fu_732_p_dout0,
        grp_fu_732_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] tmp;
input  [31:0] tmp_43;
input  [31:0] tmp_44;
output  [31:0] idx_tmp_out;
output   idx_tmp_out_ap_vld;
output  [31:0] grp_fu_732_p_din0;
output  [31:0] grp_fu_732_p_din1;
output  [4:0] grp_fu_732_p_opcode;
input  [0:0] grp_fu_732_p_dout0;
output   grp_fu_732_p_ce;

reg ap_idle;
reg idx_tmp_out_ap_vld;

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
wire   [0:0] icmp_ln84_fu_99_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] idx_tmp_load_4_reg_253;
wire   [0:0] icmp_ln85_fu_108_p2;
reg   [0:0] icmp_ln85_reg_258;
wire   [1:0] idx_25_fu_114_p2;
reg   [1:0] idx_25_reg_264;
wire   [31:0] tmp_39_fu_120_p5;
wire   [0:0] icmp_ln85_3_fu_148_p2;
reg   [0:0] icmp_ln85_3_reg_274;
wire   [0:0] icmp_ln85_4_fu_154_p2;
reg   [0:0] icmp_ln85_4_reg_279;
reg   [1:0] idx_7_fu_48;
wire   [1:0] idx_24_fu_160_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [31:0] idx_tmp_fu_52;
wire   [31:0] idx_26_fu_205_p3;
reg   [31:0] ap_sig_allocacmp_idx_tmp_load_4;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] bitcast_ln85_fu_130_p1;
wire   [7:0] tmp_s_fu_134_p4;
wire   [22:0] trunc_ln85_fu_144_p1;
wire   [0:0] or_ln85_fu_173_p2;
wire   [0:0] and_ln85_fu_177_p2;
wire   [0:0] xor_ln85_fu_183_p2;
wire   [0:0] and_ln85_2_fu_189_p2;
wire   [1:0] idx_fu_194_p3;
wire   [31:0] zext_ln81_fu_201_p1;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U368(
    .din0(tmp),
    .din1(tmp_43),
    .din2(tmp_44),
    .din3(idx_7_fu_48),
    .dout(tmp_39_fu_120_p5)
);

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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            idx_7_fu_48 <= 2'd1;
        end else if (((icmp_ln84_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            idx_7_fu_48 <= idx_24_fu_160_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            idx_tmp_fu_52 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_tmp_fu_52 <= idx_26_fu_205_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln84_fu_99_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln85_3_reg_274 <= icmp_ln85_3_fu_148_p2;
        icmp_ln85_4_reg_279 <= icmp_ln85_4_fu_154_p2;
        icmp_ln85_reg_258 <= icmp_ln85_fu_108_p2;
        idx_25_reg_264 <= idx_25_fu_114_p2;
        idx_tmp_load_4_reg_253 <= ap_sig_allocacmp_idx_tmp_load_4;
    end
end

always @ (*) begin
    if (((icmp_ln84_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_idx_tmp_load_4 = idx_26_fu_205_p3;
    end else begin
        ap_sig_allocacmp_idx_tmp_load_4 = idx_tmp_fu_52;
    end
end

always @ (*) begin
    if (((icmp_ln84_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx_tmp_out_ap_vld = 1'b1;
    end else begin
        idx_tmp_out_ap_vld = 1'b0;
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

assign and_ln85_2_fu_189_p2 = (xor_ln85_fu_183_p2 & icmp_ln85_reg_258);

assign and_ln85_fu_177_p2 = (or_ln85_fu_173_p2 & grp_fu_732_p_dout0);

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

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign bitcast_ln85_fu_130_p1 = tmp_39_fu_120_p5;

assign grp_fu_732_p_ce = 1'b1;

assign grp_fu_732_p_din0 = tmp_39_fu_120_p5;

assign grp_fu_732_p_din1 = 32'd0;

assign grp_fu_732_p_opcode = 5'd1;

assign icmp_ln84_fu_99_p2 = ((idx_7_fu_48 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln85_3_fu_148_p2 = ((tmp_s_fu_134_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln85_4_fu_154_p2 = ((trunc_ln85_fu_144_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln85_fu_108_p2 = ((ap_sig_allocacmp_idx_tmp_load_4 == 32'd0) ? 1'b1 : 1'b0);

assign idx_24_fu_160_p3 = ((icmp_ln85_fu_108_p2[0:0] == 1'b1) ? idx_25_fu_114_p2 : idx_7_fu_48);

assign idx_25_fu_114_p2 = (idx_7_fu_48 + 2'd1);

assign idx_26_fu_205_p3 = ((icmp_ln85_reg_258[0:0] == 1'b1) ? zext_ln81_fu_201_p1 : idx_tmp_load_4_reg_253);

assign idx_fu_194_p3 = ((and_ln85_2_fu_189_p2[0:0] == 1'b1) ? idx_25_reg_264 : 2'd0);

assign idx_tmp_out = idx_tmp_fu_52;

assign or_ln85_fu_173_p2 = (icmp_ln85_4_reg_279 | icmp_ln85_3_reg_274);

assign tmp_s_fu_134_p4 = {{bitcast_ln85_fu_130_p1[30:23]}};

assign trunc_ln85_fu_144_p1 = bitcast_ln85_fu_130_p1[22:0];

assign xor_ln85_fu_183_p2 = (1'd1 ^ and_ln85_fu_177_p2);

assign zext_ln81_fu_201_p1 = idx_fu_194_p3;

endmodule //main_operator_1_2_Pipeline_VITIS_LOOP_84_1
