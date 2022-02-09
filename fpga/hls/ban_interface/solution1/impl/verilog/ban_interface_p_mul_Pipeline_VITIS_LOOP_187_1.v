// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ban_interface_p_mul_Pipeline_VITIS_LOOP_187_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        aux_address0,
        aux_ce0,
        aux_q0,
        write_flag5_0_out,
        write_flag5_0_out_ap_vld,
        num_res_08_out,
        num_res_08_out_ap_vld,
        num_res5_07_out,
        num_res5_07_out_ap_vld,
        write_flag8_0_out,
        write_flag8_0_out_ap_vld,
        write_flag_0_out,
        write_flag_0_out_ap_vld,
        num_res6_06_out,
        num_res6_06_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] aux_address0;
output   aux_ce0;
input  [31:0] aux_q0;
output  [0:0] write_flag5_0_out;
output   write_flag5_0_out_ap_vld;
output  [31:0] num_res_08_out;
output   num_res_08_out_ap_vld;
output  [31:0] num_res5_07_out;
output   num_res5_07_out_ap_vld;
output  [0:0] write_flag8_0_out;
output   write_flag8_0_out_ap_vld;
output  [0:0] write_flag_0_out;
output   write_flag_0_out_ap_vld;
output  [31:0] num_res6_06_out;
output   num_res6_06_out_ap_vld;

reg ap_idle;
reg aux_ce0;
reg write_flag5_0_out_ap_vld;
reg num_res_08_out_ap_vld;
reg num_res5_07_out_ap_vld;
reg write_flag8_0_out_ap_vld;
reg write_flag_0_out_ap_vld;
reg num_res6_06_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln187_fu_154_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_18_reg_276;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] trunc_ln188_cast_fu_166_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_48;
wire   [1:0] add_ln187_fu_160_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_18;
reg   [31:0] num_res6_06_fu_52;
reg   [0:0] write_flag_0_fu_56;
reg   [0:0] write_flag8_0_fu_60;
reg   [31:0] num_res5_07_fu_64;
reg   [31:0] num_res_08_fu_68;
reg   [0:0] write_flag5_0_fu_72;
wire    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_183;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        if (((icmp_ln187_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= add_ln187_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            write_flag5_0_fu_72 <= 1'd0;
        end else if (((i_18_reg_276 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            write_flag5_0_fu_72 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            write_flag8_0_fu_60 <= 1'd0;
        end else if ((1'b1 == ap_condition_183)) begin
            write_flag8_0_fu_60 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            write_flag_0_fu_56 <= 1'd0;
        end else if (((i_18_reg_276 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            write_flag_0_fu_56 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_18_reg_276 <= ap_sig_allocacmp_i_18;
    end
end

always @ (posedge ap_clk) begin
    if (((i_18_reg_276 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res5_07_fu_64 <= aux_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_18_reg_276 == 2'd0) & ~(i_18_reg_276 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res6_06_fu_52 <= aux_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((i_18_reg_276 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res_08_fu_68 <= aux_q0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_18 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_18 = i_fu_48;
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
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res5_07_out_ap_vld = 1'b1;
    end else begin
        num_res5_07_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res6_06_out_ap_vld = 1'b1;
    end else begin
        num_res6_06_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_res_08_out_ap_vld = 1'b1;
    end else begin
        num_res_08_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag5_0_out_ap_vld = 1'b1;
    end else begin
        write_flag5_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag8_0_out_ap_vld = 1'b1;
    end else begin
        write_flag8_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag_0_out_ap_vld = 1'b1;
    end else begin
        write_flag_0_out_ap_vld = 1'b0;
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

assign add_ln187_fu_160_p2 = (ap_sig_allocacmp_i_18 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_183 = (~(i_18_reg_276 == 2'd0) & ~(i_18_reg_276 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign aux_address0 = trunc_ln188_cast_fu_166_p1;

assign icmp_ln187_fu_154_p2 = ((ap_sig_allocacmp_i_18 == 2'd3) ? 1'b1 : 1'b0);

assign num_res5_07_out = num_res5_07_fu_64;

assign num_res6_06_out = num_res6_06_fu_52;

assign num_res_08_out = num_res_08_fu_68;

assign trunc_ln188_cast_fu_166_p1 = ap_sig_allocacmp_i_18;

assign write_flag5_0_out = write_flag5_0_fu_72;

assign write_flag8_0_out = write_flag8_0_fu_60;

assign write_flag_0_out = write_flag_0_fu_56;

endmodule //ban_interface_p_mul_Pipeline_VITIS_LOOP_187_1