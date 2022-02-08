// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_21_124 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        b5_num_load_2_out,
        b5_num_load_2_out_ap_vld,
        b5_num_load_1_out,
        b5_num_load_1_out_ap_vld,
        b5_num_load_out,
        b5_num_load_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] b5_num_load_2_out;
output   b5_num_load_2_out_ap_vld;
output  [31:0] b5_num_load_1_out;
output   b5_num_load_1_out_ap_vld;
output  [31:0] b5_num_load_out;
output   b5_num_load_out_ap_vld;

reg ap_idle;
reg b5_num_load_2_out_ap_vld;
reg b5_num_load_1_out_ap_vld;
reg b5_num_load_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln21_fu_85_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_30_fu_40;
wire   [1:0] add_ln21_fu_91_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i;
wire   [1:0] i_load_fu_82_p1;
reg   [31:0] b5_num_load_fu_44;
wire   [31:0] tmp_6_fu_97_p5;
reg   [31:0] b5_num_load_1_fu_48;
reg   [31:0] b5_num_load_2_fu_52;
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

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U22(
    .din0(32'd1077622268),
    .din1(32'd1084788467),
    .din2(32'd1082135234),
    .din3(ap_sig_allocacmp_i),
    .dout(tmp_6_fu_97_p5)
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
        if ((icmp_ln21_fu_85_p2 == 1'd0)) begin
            i_30_fu_40 <= add_ln21_fu_91_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_30_fu_40 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((i_load_fu_82_p1 == 2'd1) & (icmp_ln21_fu_85_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_1_fu_48 <= tmp_6_fu_97_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_load_fu_82_p1 == 2'd1) & ~(i_load_fu_82_p1 == 2'd0) & (icmp_ln21_fu_85_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_2_fu_52 <= tmp_6_fu_97_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((i_load_fu_82_p1 == 2'd0) & (icmp_ln21_fu_85_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_fu_44 <= tmp_6_fu_97_p5;
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
    if (((icmp_ln21_fu_85_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
        ap_sig_allocacmp_i = 2'd0;
    end else begin
        ap_sig_allocacmp_i = i_30_fu_40;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_85_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_1_out_ap_vld = 1'b1;
    end else begin
        b5_num_load_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_85_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_2_out_ap_vld = 1'b1;
    end else begin
        b5_num_load_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_85_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b5_num_load_out_ap_vld = 1'b1;
    end else begin
        b5_num_load_out_ap_vld = 1'b0;
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

assign add_ln21_fu_91_p2 = (ap_sig_allocacmp_i + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign b5_num_load_1_out = b5_num_load_1_fu_48;

assign b5_num_load_2_out = b5_num_load_2_fu_52;

assign b5_num_load_out = b5_num_load_fu_44;

assign i_load_fu_82_p1 = ap_sig_allocacmp_i;

assign icmp_ln21_fu_85_p2 = ((ap_sig_allocacmp_i == 2'd3) ? 1'b1 : 1'b0);

endmodule //main_main_Pipeline_VITIS_LOOP_21_124
