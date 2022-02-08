// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_66_1 (
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
        ap_return,
        grp_fu_4230_p_din0,
        grp_fu_4230_p_din1,
        grp_fu_4230_p_opcode,
        grp_fu_4230_p_dout0,
        grp_fu_4230_p_ce
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

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
output  [0:0] ap_return;
output  [31:0] grp_fu_4230_p_din0;
output  [31:0] grp_fu_4230_p_din1;
output  [4:0] grp_fu_4230_p_opcode;
input  [0:0] grp_fu_4230_p_dout0;
output   grp_fu_4230_p_ce;

reg ap_idle;
reg b_num_ce0;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [0:0] and_ln67_fu_152_p2;
reg   [0:0] icmp_ln66_reg_180;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] merge_reg_71;
reg   [1:0] i_29_reg_175;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln66_fu_97_p2;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
wire   [0:0] icmp_ln67_fu_136_p2;
reg   [0:0] icmp_ln67_reg_194;
wire   [0:0] icmp_ln67_2_fu_142_p2;
reg   [0:0] icmp_ln67_2_reg_199;
reg   [0:0] ap_phi_mux_merge_phi_fu_75_p4;
wire   [63:0] zext_ln67_2_fu_113_p1;
reg   [1:0] i_fu_48;
wire   [1:0] add_ln66_fu_158_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_29;
wire   [5:0] zext_ln67_fu_103_p1;
wire   [5:0] add_ln67_fu_107_p2;
wire   [31:0] bitcast_ln67_fu_118_p1;
wire   [7:0] tmp_s_fu_122_p4;
wire   [22:0] trunc_ln67_fu_132_p1;
wire   [0:0] or_ln67_fu_148_p2;
reg   [0:0] ap_return_preg;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_return_preg = 1'd0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln66_reg_180 == 1'd1) | (1'd0 == and_ln67_fu_152_p2)))) begin
            ap_return_preg <= ap_phi_mux_merge_phi_fu_75_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        i_fu_48 <= 2'd1;
    end else if (((1'd1 == and_ln67_fu_152_p2) & (icmp_ln66_reg_180 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_48 <= add_ln66_fu_158_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln66_reg_180 == 1'd0) & (1'd0 == and_ln67_fu_152_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        merge_reg_71 <= 1'd0;
    end else if (((icmp_ln66_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        merge_reg_71 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        i_29_reg_175 <= ap_sig_allocacmp_i_29;
        icmp_ln66_reg_180 <= icmp_ln66_fu_97_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln66_reg_180 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln67_2_reg_199 <= icmp_ln67_2_fu_142_p2;
        icmp_ln67_reg_194 <= icmp_ln67_fu_136_p2;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln66_reg_180 == 1'd1) | (1'd0 == and_ln67_fu_152_p2)))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((icmp_ln66_reg_180 == 1'd0) & (1'd0 == and_ln67_fu_152_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_phi_mux_merge_phi_fu_75_p4 = 1'd0;
    end else begin
        ap_phi_mux_merge_phi_fu_75_p4 = merge_reg_71;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln66_reg_180 == 1'd1) | (1'd0 == and_ln67_fu_152_p2)))) begin
        ap_return = ap_phi_mux_merge_phi_fu_75_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_29 = 2'd1;
    end else begin
        ap_sig_allocacmp_i_29 = i_fu_48;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        b_num_ce0 = 1'b1;
    end else begin
        b_num_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln66_fu_158_p2 = (i_29_reg_175 + 2'd1);

assign add_ln67_fu_107_p2 = (sub_ln535 + zext_ln67_fu_103_p1);

assign and_ln67_fu_152_p2 = (or_ln67_fu_148_p2 & grp_fu_4230_p_dout0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign b_num_address0 = zext_ln67_2_fu_113_p1;

assign bitcast_ln67_fu_118_p1 = b_num_q0;

assign grp_fu_4230_p_ce = 1'b1;

assign grp_fu_4230_p_din0 = b_num_q0;

assign grp_fu_4230_p_din1 = 32'd0;

assign grp_fu_4230_p_opcode = 5'd1;

assign icmp_ln66_fu_97_p2 = ((ap_sig_allocacmp_i_29 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln67_2_fu_142_p2 = ((trunc_ln67_fu_132_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln67_fu_136_p2 = ((tmp_s_fu_122_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln67_fu_148_p2 = (icmp_ln67_reg_194 | icmp_ln67_2_reg_199);

assign tmp_s_fu_122_p4 = {{bitcast_ln67_fu_118_p1[30:23]}};

assign trunc_ln67_fu_132_p1 = bitcast_ln67_fu_118_p1[22:0];

assign zext_ln67_2_fu_113_p1 = add_ln67_fu_107_p2;

assign zext_ln67_fu_103_p1 = ap_sig_allocacmp_i_29;

endmodule //main_main_Pipeline_VITIS_LOOP_66_1
