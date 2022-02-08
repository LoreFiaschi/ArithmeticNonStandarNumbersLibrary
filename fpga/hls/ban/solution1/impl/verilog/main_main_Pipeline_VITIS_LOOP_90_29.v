// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_90_29 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp_61,
        tmp_60,
        tmp_59,
        zext_ln90_1,
        xor_ln90_1,
        bb4_num_2_0_out,
        bb4_num_2_0_out_ap_vld,
        bb4_num_1_0_out,
        bb4_num_1_0_out_ap_vld,
        bb4_num_0_0_out,
        bb4_num_0_0_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] tmp_61;
input  [31:0] tmp_60;
input  [31:0] tmp_59;
input  [1:0] zext_ln90_1;
input  [1:0] xor_ln90_1;
output  [31:0] bb4_num_2_0_out;
output   bb4_num_2_0_out_ap_vld;
output  [31:0] bb4_num_1_0_out;
output   bb4_num_1_0_out_ap_vld;
output  [31:0] bb4_num_0_0_out;
output   bb4_num_0_0_out_ap_vld;

reg ap_idle;
reg bb4_num_2_0_out_ap_vld;
reg bb4_num_1_0_out_ap_vld;
reg bb4_num_0_0_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln90_fu_182_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] base_fu_52;
wire   [1:0] add_ln91_fu_187_p2;
wire    ap_loop_init;
wire   [1:0] base_5_load_fu_179_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] idx_9_fu_56;
wire   [2:0] add_ln91_2_fu_205_p2;
wire   [2:0] zext_ln90_1_cast_fu_135_p1;
reg   [31:0] bb4_num_1_fu_60;
wire   [31:0] bb4_num_1_7_fu_215_p5;
reg   [31:0] bb4_num_1_1_fu_64;
reg   [31:0] bb4_num_1_2_fu_68;
reg   [31:0] bb4_num_1_3_fu_72;
reg   [31:0] bb4_num_1_4_fu_76;
reg   [31:0] bb4_num_1_5_fu_80;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] bb4_num_1_7_fu_215_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_195;
reg    ap_condition_199;
reg    ap_condition_202;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
mux_32_32_1_1_U160(
    .din0(bb4_num_1_fu_60),
    .din1(bb4_num_1_1_fu_64),
    .din2(bb4_num_1_2_fu_68),
    .din3(bb4_num_1_7_fu_215_p4),
    .dout(bb4_num_1_7_fu_215_p5)
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            base_fu_52 <= 2'd0;
        end else if (((icmp_ln90_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            base_fu_52 <= add_ln91_fu_187_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_1_fu_64 <= tmp_60;
        end else if ((1'b1 == ap_condition_195)) begin
            bb4_num_1_1_fu_64 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_2_fu_68 <= tmp_61;
        end else if ((1'b1 == ap_condition_199)) begin
            bb4_num_1_2_fu_68 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_3_fu_72 <= tmp_59;
        end else if ((1'b1 == ap_condition_202)) begin
            bb4_num_1_3_fu_72 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_4_fu_76 <= tmp_60;
        end else if ((1'b1 == ap_condition_195)) begin
            bb4_num_1_4_fu_76 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_5_fu_80 <= tmp_61;
        end else if ((1'b1 == ap_condition_199)) begin
            bb4_num_1_5_fu_80 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            bb4_num_1_fu_60 <= tmp_59;
        end else if ((1'b1 == ap_condition_202)) begin
            bb4_num_1_fu_60 <= bb4_num_1_7_fu_215_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            idx_9_fu_56 <= zext_ln90_1_cast_fu_135_p1;
        end else if (((icmp_ln90_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            idx_9_fu_56 <= add_ln91_2_fu_205_p2;
        end
    end
end

always @ (*) begin
    if (((icmp_ln90_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln90_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bb4_num_0_0_out_ap_vld = 1'b1;
    end else begin
        bb4_num_0_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln90_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bb4_num_1_0_out_ap_vld = 1'b1;
    end else begin
        bb4_num_1_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln90_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bb4_num_2_0_out_ap_vld = 1'b1;
    end else begin
        bb4_num_2_0_out_ap_vld = 1'b0;
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

assign add_ln91_2_fu_205_p2 = (idx_9_fu_56 + 3'd1);

assign add_ln91_fu_187_p2 = (base_fu_52 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_195 = ((base_5_load_fu_179_p1 == 2'd1) & (icmp_ln90_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_199 = (~(base_5_load_fu_179_p1 == 2'd0) & ~(base_5_load_fu_179_p1 == 2'd1) & (icmp_ln90_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_202 = ((base_5_load_fu_179_p1 == 2'd0) & (icmp_ln90_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign base_5_load_fu_179_p1 = base_fu_52;

assign bb4_num_0_0_out = bb4_num_1_3_fu_72;

assign bb4_num_1_0_out = bb4_num_1_4_fu_76;

assign bb4_num_1_7_fu_215_p4 = idx_9_fu_56[1:0];

assign bb4_num_2_0_out = bb4_num_1_5_fu_80;

assign icmp_ln90_fu_182_p2 = ((base_fu_52 == xor_ln90_1) ? 1'b1 : 1'b0);

assign zext_ln90_1_cast_fu_135_p1 = zext_ln90_1;

endmodule //main_main_Pipeline_VITIS_LOOP_90_29
