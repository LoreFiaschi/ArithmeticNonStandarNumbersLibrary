// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ban_interface_operator_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read14,
        p_read25,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] p_read14;
input  [127:0] p_read25;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln27_fu_142_p2;
reg   [0:0] icmp_ln27_reg_907;
wire   [31:0] bitcast_ln27_fu_158_p1;
wire   [0:0] icmp_ln27_47_fu_186_p2;
reg   [0:0] icmp_ln27_47_reg_920;
wire   [0:0] icmp_ln27_48_fu_192_p2;
reg   [0:0] icmp_ln27_48_reg_925;
wire   [31:0] bitcast_ln27_18_fu_208_p1;
wire   [0:0] icmp_ln27_49_fu_235_p2;
reg   [0:0] icmp_ln27_49_reg_937;
wire   [0:0] icmp_ln27_50_fu_241_p2;
reg   [0:0] icmp_ln27_50_reg_942;
wire   [31:0] bitcast_ln27_19_fu_257_p1;
wire   [0:0] icmp_ln27_51_fu_283_p2;
reg   [0:0] icmp_ln27_51_reg_953;
wire   [0:0] icmp_ln27_52_fu_289_p2;
reg   [0:0] icmp_ln27_52_reg_958;
wire   [0:0] icmp_ln27_9_fu_299_p2;
reg   [0:0] icmp_ln27_9_reg_963;
wire   [31:0] bitcast_ln27_20_fu_315_p1;
wire   [0:0] icmp_ln27_53_fu_343_p2;
reg   [0:0] icmp_ln27_53_reg_977;
wire   [0:0] icmp_ln27_54_fu_349_p2;
reg   [0:0] icmp_ln27_54_reg_982;
wire   [31:0] bitcast_ln27_21_fu_365_p1;
wire   [0:0] icmp_ln27_55_fu_392_p2;
reg   [0:0] icmp_ln27_55_reg_994;
wire   [0:0] icmp_ln27_56_fu_398_p2;
reg   [0:0] icmp_ln27_56_reg_999;
wire   [31:0] bitcast_ln27_22_fu_414_p1;
wire   [0:0] icmp_ln27_57_fu_440_p2;
reg   [0:0] icmp_ln27_57_reg_1010;
wire   [0:0] icmp_ln27_58_fu_446_p2;
reg   [0:0] icmp_ln27_58_reg_1015;
wire   [31:0] p_fu_452_p2;
reg   [31:0] p_reg_1020;
wire   [0:0] and_ln27_35_fu_570_p2;
reg   [0:0] and_ln27_35_reg_1027;
wire    ap_CS_fsm_state2;
wire   [0:0] or_ln27_27_fu_593_p2;
reg   [0:0] or_ln27_27_reg_1034;
wire   [31:0] grp_fu_84_p2;
reg   [31:0] num_res_reg_1042;
wire    ap_CS_fsm_state3;
wire   [31:0] grp_fu_88_p2;
reg   [31:0] mul5_i_i_reg_1049;
wire   [31:0] grp_fu_92_p2;
reg   [31:0] mul8_i_i_reg_1054;
wire   [31:0] grp_fu_96_p2;
reg   [31:0] mul12_i_i_reg_1059;
wire   [31:0] grp_fu_100_p2;
reg   [31:0] mul15_i_i_reg_1064;
wire   [31:0] grp_fu_104_p2;
reg   [31:0] mul19_i_i_reg_1069;
wire   [31:0] grp_fu_76_p2;
reg   [31:0] num_res_5_reg_1074;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_80_p2;
reg   [31:0] add16_i_i_reg_1083;
reg   [31:0] num_res_6_reg_1088;
wire    ap_CS_fsm_state11;
reg   [31:0] grp_fu_76_p0;
reg   [31:0] grp_fu_76_p1;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_96_p0;
reg   [31:0] grp_fu_108_p0;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_113_p0;
reg   [31:0] grp_fu_118_p0;
wire   [31:0] trunc_ln27_fu_138_p1;
wire   [31:0] trunc_ln27_s_fu_148_p4;
wire   [7:0] tmp_s_fu_166_p4;
wire   [22:0] trunc_ln27_24_fu_176_p4;
wire   [31:0] trunc_ln27_25_fu_198_p4;
wire   [7:0] tmp_65_fu_215_p4;
wire   [22:0] trunc_ln27_26_fu_225_p4;
wire   [31:0] trunc_ln27_27_fu_247_p4;
wire   [7:0] tmp_67_fu_263_p4;
wire   [22:0] trunc_ln27_28_fu_273_p4;
wire   [31:0] trunc_ln27_5_fu_295_p1;
wire   [31:0] trunc_ln27_29_fu_305_p4;
wire   [7:0] tmp_69_fu_323_p4;
wire   [22:0] trunc_ln27_30_fu_333_p4;
wire   [31:0] trunc_ln27_31_fu_355_p4;
wire   [7:0] tmp_71_fu_372_p4;
wire   [22:0] trunc_ln27_32_fu_382_p4;
wire   [31:0] trunc_ln27_33_fu_404_p4;
wire   [7:0] tmp_fu_420_p4;
wire   [22:0] trunc_ln27_34_fu_430_p4;
wire   [0:0] or_ln27_fu_458_p2;
wire   [0:0] grp_fu_108_p2;
wire   [0:0] or_ln27_21_fu_468_p2;
wire   [0:0] grp_fu_113_p2;
wire   [0:0] or_ln27_22_fu_478_p2;
wire   [0:0] grp_fu_118_p2;
wire   [0:0] or_ln27_23_fu_488_p2;
wire   [0:0] grp_fu_123_p2;
wire   [0:0] or_ln27_24_fu_498_p2;
wire   [0:0] grp_fu_128_p2;
wire   [0:0] and_ln27_28_fu_492_p2;
wire   [0:0] and_ln27_29_fu_502_p2;
wire   [0:0] and_ln27_30_fu_508_p2;
wire   [0:0] xor_ln27_fu_514_p2;
wire   [0:0] or_ln27_25_fu_525_p2;
wire   [0:0] grp_fu_133_p2;
wire   [0:0] and_ln27_fu_462_p2;
wire   [0:0] and_ln27_26_fu_472_p2;
wire   [0:0] and_ln27_27_fu_482_p2;
wire   [0:0] and_ln27_33_fu_540_p2;
wire   [0:0] and_ln27_32_fu_535_p2;
wire   [0:0] and_ln27_34_fu_546_p2;
wire   [0:0] and_ln27_31_fu_529_p2;
wire   [0:0] or_ln27_5_fu_520_p2;
wire   [0:0] xor_ln27_5_fu_558_p2;
wire   [0:0] or_ln27_26_fu_564_p2;
wire   [0:0] xor_ln27_4_fu_552_p2;
wire   [0:0] xor_ln27_6_fu_576_p2;
wire   [0:0] and_ln27_40_fu_581_p2;
wire   [0:0] and_ln27_41_fu_587_p2;
wire    ap_CS_fsm_state13;
wire   [31:0] bitcast_ln32_fu_599_p1;
wire   [7:0] tmp_74_fu_602_p4;
wire   [22:0] trunc_ln32_fu_612_p1;
wire   [0:0] icmp_ln32_4_fu_622_p2;
wire   [0:0] icmp_ln32_fu_616_p2;
wire   [0:0] or_ln32_fu_628_p2;
wire   [0:0] and_ln32_fu_634_p2;
wire   [31:0] bitcast_ln35_fu_646_p1;
wire   [7:0] tmp_76_fu_649_p4;
wire   [22:0] trunc_ln35_fu_659_p1;
wire   [0:0] icmp_ln35_4_fu_669_p2;
wire   [0:0] icmp_ln35_fu_663_p2;
wire   [0:0] or_ln35_fu_675_p2;
wire   [0:0] and_ln35_fu_681_p2;
wire   [31:0] bitcast_ln43_fu_698_p1;
wire   [7:0] tmp_78_fu_701_p4;
wire   [22:0] trunc_ln43_fu_711_p1;
wire   [0:0] icmp_ln43_4_fu_721_p2;
wire   [0:0] icmp_ln43_fu_715_p2;
wire   [0:0] or_ln43_fu_727_p2;
wire   [0:0] and_ln43_fu_733_p2;
wire   [0:0] and_ln27_36_fu_750_p2;
wire   [0:0] xor_ln35_fu_687_p2;
wire   [0:0] and_ln27_37_fu_755_p2;
wire   [0:0] and_ln35_4_fu_767_p2;
wire   [0:0] and_ln27_38_fu_773_p2;
wire   [0:0] xor_ln43_fu_739_p2;
wire   [0:0] and_ln27_39_fu_778_p2;
wire   [31:0] num_res_7_fu_761_p3;
wire   [31:0] num_res_8_fu_784_p3;
wire   [31:0] num_res_10_fu_798_p3;
wire   [31:0] num_res_11_fu_804_p3;
wire   [0:0] or_ln27_28_fu_818_p2;
wire   [0:0] or_ln27_29_fu_823_p2;
wire   [0:0] xor_ln32_fu_640_p2;
wire   [31:0] c_p_8_fu_745_p2;
wire   [31:0] c_p_7_fu_693_p2;
wire   [0:0] and_ln27_42_fu_836_p2;
wire   [31:0] select_ln27_1_fu_841_p3;
wire   [31:0] select_ln27_2_fu_848_p3;
wire   [0:0] or_ln27_30_fu_855_p2;
wire   [0:0] or_ln27_31_fu_869_p2;
wire   [31:0] select_ln27_3_fu_861_p3;
wire   [31:0] c_p_fu_875_p3;
wire   [31:0] num_res_9_fu_791_p3;
wire   [31:0] num_res_12_fu_811_p3;
wire   [31:0] select_ln27_fu_829_p3;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
end

ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U64(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_76_p0),
    .din1(grp_fu_76_p1),
    .ce(1'b1),
    .dout(grp_fu_76_p2)
);

ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U65(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul12_i_i_reg_1059),
    .din1(mul15_i_i_reg_1064),
    .ce(1'b1),
    .dout(grp_fu_80_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_fu_158_p1),
    .din1(bitcast_ln27_20_fu_315_p1),
    .ce(1'b1),
    .dout(grp_fu_84_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U67(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_18_fu_208_p1),
    .din1(bitcast_ln27_20_fu_315_p1),
    .ce(1'b1),
    .dout(grp_fu_88_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U68(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_fu_158_p1),
    .din1(bitcast_ln27_21_fu_365_p1),
    .ce(1'b1),
    .dout(grp_fu_92_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U69(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_96_p0),
    .din1(bitcast_ln27_20_fu_315_p1),
    .ce(1'b1),
    .dout(grp_fu_96_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U70(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_fu_158_p1),
    .din1(bitcast_ln27_22_fu_414_p1),
    .ce(1'b1),
    .dout(grp_fu_100_p2)
);

ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_18_fu_208_p1),
    .din1(bitcast_ln27_21_fu_365_p1),
    .ce(1'b1),
    .dout(grp_fu_104_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U72(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_108_p0),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_108_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U73(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_113_p0),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_113_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U74(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_118_p0),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_118_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U75(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_20_fu_315_p1),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_123_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U76(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_21_fu_365_p1),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_128_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U77(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln27_22_fu_414_p1),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_133_p2)
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
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_return_0_preg <= c_p_fu_875_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_return_1_preg <= num_res_9_fu_791_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_return_2_preg <= num_res_12_fu_811_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_return_3_preg <= select_ln27_fu_829_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add16_i_i_reg_1083 <= grp_fu_80_p2;
        num_res_5_reg_1074 <= grp_fu_76_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        and_ln27_35_reg_1027 <= and_ln27_35_fu_570_p2;
        or_ln27_27_reg_1034 <= or_ln27_27_fu_593_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln27_47_reg_920 <= icmp_ln27_47_fu_186_p2;
        icmp_ln27_48_reg_925 <= icmp_ln27_48_fu_192_p2;
        icmp_ln27_49_reg_937 <= icmp_ln27_49_fu_235_p2;
        icmp_ln27_50_reg_942 <= icmp_ln27_50_fu_241_p2;
        icmp_ln27_51_reg_953 <= icmp_ln27_51_fu_283_p2;
        icmp_ln27_52_reg_958 <= icmp_ln27_52_fu_289_p2;
        icmp_ln27_53_reg_977 <= icmp_ln27_53_fu_343_p2;
        icmp_ln27_54_reg_982 <= icmp_ln27_54_fu_349_p2;
        icmp_ln27_55_reg_994 <= icmp_ln27_55_fu_392_p2;
        icmp_ln27_56_reg_999 <= icmp_ln27_56_fu_398_p2;
        icmp_ln27_57_reg_1010 <= icmp_ln27_57_fu_440_p2;
        icmp_ln27_58_reg_1015 <= icmp_ln27_58_fu_446_p2;
        icmp_ln27_9_reg_963 <= icmp_ln27_9_fu_299_p2;
        icmp_ln27_reg_907 <= icmp_ln27_fu_142_p2;
        p_reg_1020 <= p_fu_452_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul12_i_i_reg_1059 <= grp_fu_96_p2;
        mul15_i_i_reg_1064 <= grp_fu_100_p2;
        mul19_i_i_reg_1069 <= grp_fu_104_p2;
        mul5_i_i_reg_1049 <= grp_fu_88_p2;
        mul8_i_i_reg_1054 <= grp_fu_92_p2;
        num_res_reg_1042 <= grp_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        num_res_6_reg_1088 <= grp_fu_76_p2;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_return_0 = c_p_fu_875_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_return_1 = num_res_9_fu_791_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_return_2 = num_res_12_fu_811_p3;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_return_3 = select_ln27_fu_829_p3;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_108_p0 = num_res_reg_1042;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_108_p0 = bitcast_ln27_fu_158_p1;
    end else begin
        grp_fu_108_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_113_p0 = num_res_5_reg_1074;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_113_p0 = bitcast_ln27_18_fu_208_p1;
    end else begin
        grp_fu_113_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_118_p0 = num_res_6_reg_1088;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_118_p0 = bitcast_ln27_19_fu_257_p1;
    end else begin
        grp_fu_118_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_76_p0 = add16_i_i_reg_1083;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_76_p0 = mul5_i_i_reg_1049;
    end else begin
        grp_fu_76_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_76_p1 = mul19_i_i_reg_1069;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_76_p1 = mul8_i_i_reg_1054;
    end else begin
        grp_fu_76_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln27_26_fu_472_p2 = (or_ln27_21_fu_468_p2 & grp_fu_113_p2);

assign and_ln27_27_fu_482_p2 = (or_ln27_22_fu_478_p2 & grp_fu_118_p2);

assign and_ln27_28_fu_492_p2 = (or_ln27_23_fu_488_p2 & grp_fu_123_p2);

assign and_ln27_29_fu_502_p2 = (or_ln27_24_fu_498_p2 & grp_fu_128_p2);

assign and_ln27_30_fu_508_p2 = (and_ln27_29_fu_502_p2 & and_ln27_28_fu_492_p2);

assign and_ln27_31_fu_529_p2 = (or_ln27_25_fu_525_p2 & grp_fu_133_p2);

assign and_ln27_32_fu_535_p2 = (icmp_ln27_reg_907 & and_ln27_fu_462_p2);

assign and_ln27_33_fu_540_p2 = (and_ln27_27_fu_482_p2 & and_ln27_26_fu_472_p2);

assign and_ln27_34_fu_546_p2 = (and_ln27_33_fu_540_p2 & and_ln27_32_fu_535_p2);

assign and_ln27_35_fu_570_p2 = (xor_ln27_4_fu_552_p2 & or_ln27_26_fu_564_p2);

assign and_ln27_36_fu_750_p2 = (and_ln32_fu_634_p2 & and_ln27_35_reg_1027);

assign and_ln27_37_fu_755_p2 = (xor_ln35_fu_687_p2 & and_ln27_36_fu_750_p2);

assign and_ln27_38_fu_773_p2 = (and_ln35_4_fu_767_p2 & and_ln27_35_reg_1027);

assign and_ln27_39_fu_778_p2 = (xor_ln43_fu_739_p2 & and_ln27_38_fu_773_p2);

assign and_ln27_40_fu_581_p2 = (xor_ln27_6_fu_576_p2 & and_ln27_30_fu_508_p2);

assign and_ln27_41_fu_587_p2 = (and_ln27_40_fu_581_p2 & and_ln27_31_fu_529_p2);

assign and_ln27_42_fu_836_p2 = (xor_ln32_fu_640_p2 & and_ln27_35_reg_1027);

assign and_ln27_fu_462_p2 = (or_ln27_fu_458_p2 & grp_fu_108_p2);

assign and_ln32_fu_634_p2 = (or_ln32_fu_628_p2 & grp_fu_108_p2);

assign and_ln35_4_fu_767_p2 = (and_ln35_fu_681_p2 & and_ln32_fu_634_p2);

assign and_ln35_fu_681_p2 = (or_ln35_fu_675_p2 & grp_fu_113_p2);

assign and_ln43_fu_733_p2 = (or_ln43_fu_727_p2 & grp_fu_118_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign bitcast_ln27_18_fu_208_p1 = trunc_ln27_25_fu_198_p4;

assign bitcast_ln27_19_fu_257_p1 = trunc_ln27_27_fu_247_p4;

assign bitcast_ln27_20_fu_315_p1 = trunc_ln27_29_fu_305_p4;

assign bitcast_ln27_21_fu_365_p1 = trunc_ln27_31_fu_355_p4;

assign bitcast_ln27_22_fu_414_p1 = trunc_ln27_33_fu_404_p4;

assign bitcast_ln27_fu_158_p1 = trunc_ln27_s_fu_148_p4;

assign bitcast_ln32_fu_599_p1 = num_res_reg_1042;

assign bitcast_ln35_fu_646_p1 = num_res_5_reg_1074;

assign bitcast_ln43_fu_698_p1 = num_res_6_reg_1088;

assign c_p_7_fu_693_p2 = ($signed(p_reg_1020) + $signed(32'd4294967295));

assign c_p_8_fu_745_p2 = ($signed(p_reg_1020) + $signed(32'd4294967294));

assign c_p_fu_875_p3 = ((or_ln27_31_fu_869_p2[0:0] == 1'b1) ? select_ln27_3_fu_861_p3 : 32'd0);

assign grp_fu_96_p0 = trunc_ln27_27_fu_247_p4;

assign icmp_ln27_47_fu_186_p2 = ((tmp_s_fu_166_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_48_fu_192_p2 = ((trunc_ln27_24_fu_176_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_49_fu_235_p2 = ((tmp_65_fu_215_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_50_fu_241_p2 = ((trunc_ln27_26_fu_225_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_51_fu_283_p2 = ((tmp_67_fu_263_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_52_fu_289_p2 = ((trunc_ln27_28_fu_273_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_53_fu_343_p2 = ((tmp_69_fu_323_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_54_fu_349_p2 = ((trunc_ln27_30_fu_333_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_55_fu_392_p2 = ((tmp_71_fu_372_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_56_fu_398_p2 = ((trunc_ln27_32_fu_382_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_57_fu_440_p2 = ((tmp_fu_420_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln27_58_fu_446_p2 = ((trunc_ln27_34_fu_430_p4 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_9_fu_299_p2 = ((trunc_ln27_5_fu_295_p1 != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_fu_142_p2 = ((trunc_ln27_fu_138_p1 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln32_4_fu_622_p2 = ((trunc_ln32_fu_612_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln32_fu_616_p2 = ((tmp_74_fu_602_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln35_4_fu_669_p2 = ((trunc_ln35_fu_659_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln35_fu_663_p2 = ((tmp_76_fu_649_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln43_4_fu_721_p2 = ((trunc_ln43_fu_711_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_715_p2 = ((tmp_78_fu_701_p4 != 8'd255) ? 1'b1 : 1'b0);

assign num_res_10_fu_798_p3 = ((and_ln27_37_fu_755_p2[0:0] == 1'b1) ? num_res_6_reg_1088 : num_res_5_reg_1074);

assign num_res_11_fu_804_p3 = ((and_ln27_39_fu_778_p2[0:0] == 1'b1) ? num_res_5_reg_1074 : num_res_10_fu_798_p3);

assign num_res_12_fu_811_p3 = ((or_ln27_27_reg_1034[0:0] == 1'b1) ? 32'd0 : num_res_11_fu_804_p3);

assign num_res_7_fu_761_p3 = ((and_ln27_37_fu_755_p2[0:0] == 1'b1) ? num_res_5_reg_1074 : num_res_reg_1042);

assign num_res_8_fu_784_p3 = ((and_ln27_39_fu_778_p2[0:0] == 1'b1) ? num_res_6_reg_1088 : num_res_7_fu_761_p3);

assign num_res_9_fu_791_p3 = ((or_ln27_27_reg_1034[0:0] == 1'b1) ? 32'd0 : num_res_8_fu_784_p3);

assign or_ln27_21_fu_468_p2 = (icmp_ln27_50_reg_942 | icmp_ln27_49_reg_937);

assign or_ln27_22_fu_478_p2 = (icmp_ln27_52_reg_958 | icmp_ln27_51_reg_953);

assign or_ln27_23_fu_488_p2 = (icmp_ln27_54_reg_982 | icmp_ln27_53_reg_977);

assign or_ln27_24_fu_498_p2 = (icmp_ln27_56_reg_999 | icmp_ln27_55_reg_994);

assign or_ln27_25_fu_525_p2 = (icmp_ln27_58_reg_1015 | icmp_ln27_57_reg_1010);

assign or_ln27_26_fu_564_p2 = (xor_ln27_5_fu_558_p2 | or_ln27_5_fu_520_p2);

assign or_ln27_27_fu_593_p2 = (and_ln27_41_fu_587_p2 | and_ln27_34_fu_546_p2);

assign or_ln27_28_fu_818_p2 = (or_ln27_27_reg_1034 | and_ln27_39_fu_778_p2);

assign or_ln27_29_fu_823_p2 = (or_ln27_28_fu_818_p2 | and_ln27_37_fu_755_p2);

assign or_ln27_30_fu_855_p2 = (and_ln27_42_fu_836_p2 | and_ln27_37_fu_755_p2);

assign or_ln27_31_fu_869_p2 = (or_ln27_30_fu_855_p2 | or_ln27_28_fu_818_p2);

assign or_ln27_5_fu_520_p2 = (xor_ln27_fu_514_p2 | icmp_ln27_9_reg_963);

assign or_ln27_fu_458_p2 = (icmp_ln27_48_reg_925 | icmp_ln27_47_reg_920);

assign or_ln32_fu_628_p2 = (icmp_ln32_fu_616_p2 | icmp_ln32_4_fu_622_p2);

assign or_ln35_fu_675_p2 = (icmp_ln35_fu_663_p2 | icmp_ln35_4_fu_669_p2);

assign or_ln43_fu_727_p2 = (icmp_ln43_fu_715_p2 | icmp_ln43_4_fu_721_p2);

assign p_fu_452_p2 = (trunc_ln27_5_fu_295_p1 + trunc_ln27_fu_138_p1);

assign select_ln27_1_fu_841_p3 = ((or_ln27_27_reg_1034[0:0] == 1'b1) ? 32'd0 : c_p_8_fu_745_p2);

assign select_ln27_2_fu_848_p3 = ((and_ln27_37_fu_755_p2[0:0] == 1'b1) ? c_p_7_fu_693_p2 : p_reg_1020);

assign select_ln27_3_fu_861_p3 = ((or_ln27_28_fu_818_p2[0:0] == 1'b1) ? select_ln27_1_fu_841_p3 : select_ln27_2_fu_848_p3);

assign select_ln27_fu_829_p3 = ((or_ln27_29_fu_823_p2[0:0] == 1'b1) ? 32'd0 : num_res_6_reg_1088);

assign tmp_65_fu_215_p4 = {{p_read14[94:87]}};

assign tmp_67_fu_263_p4 = {{p_read14[126:119]}};

assign tmp_69_fu_323_p4 = {{p_read25[62:55]}};

assign tmp_71_fu_372_p4 = {{p_read25[94:87]}};

assign tmp_74_fu_602_p4 = {{bitcast_ln32_fu_599_p1[30:23]}};

assign tmp_76_fu_649_p4 = {{bitcast_ln35_fu_646_p1[30:23]}};

assign tmp_78_fu_701_p4 = {{bitcast_ln43_fu_698_p1[30:23]}};

assign tmp_fu_420_p4 = {{p_read25[126:119]}};

assign tmp_s_fu_166_p4 = {{p_read14[62:55]}};

assign trunc_ln27_24_fu_176_p4 = {{p_read14[54:32]}};

assign trunc_ln27_25_fu_198_p4 = {{p_read14[95:64]}};

assign trunc_ln27_26_fu_225_p4 = {{p_read14[86:64]}};

assign trunc_ln27_27_fu_247_p4 = {{p_read14[127:96]}};

assign trunc_ln27_28_fu_273_p4 = {{p_read14[118:96]}};

assign trunc_ln27_29_fu_305_p4 = {{p_read25[63:32]}};

assign trunc_ln27_30_fu_333_p4 = {{p_read25[54:32]}};

assign trunc_ln27_31_fu_355_p4 = {{p_read25[95:64]}};

assign trunc_ln27_32_fu_382_p4 = {{p_read25[86:64]}};

assign trunc_ln27_33_fu_404_p4 = {{p_read25[127:96]}};

assign trunc_ln27_34_fu_430_p4 = {{p_read25[118:96]}};

assign trunc_ln27_5_fu_295_p1 = p_read25[31:0];

assign trunc_ln27_fu_138_p1 = p_read14[31:0];

assign trunc_ln27_s_fu_148_p4 = {{p_read14[63:32]}};

assign trunc_ln32_fu_612_p1 = bitcast_ln32_fu_599_p1[22:0];

assign trunc_ln35_fu_659_p1 = bitcast_ln35_fu_646_p1[22:0];

assign trunc_ln43_fu_711_p1 = bitcast_ln43_fu_698_p1[22:0];

assign xor_ln27_4_fu_552_p2 = (1'd1 ^ and_ln27_34_fu_546_p2);

assign xor_ln27_5_fu_558_p2 = (1'd1 ^ and_ln27_31_fu_529_p2);

assign xor_ln27_6_fu_576_p2 = (icmp_ln27_9_reg_963 ^ 1'd1);

assign xor_ln27_fu_514_p2 = (1'd1 ^ and_ln27_30_fu_508_p2);

assign xor_ln32_fu_640_p2 = (1'd1 ^ and_ln32_fu_634_p2);

assign xor_ln35_fu_687_p2 = (1'd1 ^ and_ln35_fu_681_p2);

assign xor_ln43_fu_739_p2 = (1'd1 ^ and_ln43_fu_733_p2);

endmodule //ban_interface_operator_mul