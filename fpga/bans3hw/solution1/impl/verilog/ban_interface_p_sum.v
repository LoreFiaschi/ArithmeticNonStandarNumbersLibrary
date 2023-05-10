// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ban_interface_p_sum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read14,
        p_read25,
        diff_p,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] p_read14;
input  [127:0] p_read25;
input  [1:0] diff_p;
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

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] c_p_fu_95_p1;
reg   [31:0] c_p_reg_535;
wire   [31:0] bitcast_ln51_fu_109_p1;
reg   [31:0] bitcast_ln51_reg_542;
wire   [31:0] bitcast_ln51_2_fu_124_p1;
reg   [31:0] bitcast_ln51_2_reg_549;
wire   [31:0] bitcast_ln51_3_fu_139_p1;
reg   [31:0] bitcast_ln51_3_reg_556;
wire   [31:0] bitcast_ln55_fu_154_p1;
reg   [31:0] bitcast_ln55_reg_563;
wire   [31:0] bitcast_ln65_fu_169_p1;
reg   [31:0] bitcast_ln65_reg_568;
wire   [0:0] and_ln53_fu_201_p2;
reg   [0:0] and_ln53_reg_578;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln53_2_fu_207_p2;
reg   [0:0] icmp_ln53_2_reg_584;
wire   [0:0] icmp_ln53_3_fu_213_p2;
reg   [0:0] icmp_ln53_3_reg_592;
wire   [31:0] grp_fu_68_p2;
reg   [31:0] add1_reg_600;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_72_p2;
reg   [31:0] add2_reg_607;
wire   [31:0] grp_fu_76_p2;
reg   [31:0] add3_reg_616;
reg   [31:0] grp_fu_68_p0;
reg   [31:0] grp_fu_68_p1;
wire    ap_CS_fsm_state3;
reg   [31:0] grp_fu_72_p0;
reg   [31:0] grp_fu_72_p1;
wire   [31:0] grp_fu_76_p0;
wire   [31:0] grp_fu_76_p1;
wire    ap_CS_fsm_state5;
wire   [31:0] trunc_ln51_2_fu_99_p4;
wire   [31:0] trunc_ln51_3_fu_114_p4;
wire   [31:0] trunc_ln51_4_fu_129_p4;
wire   [31:0] trunc_ln_fu_144_p4;
wire   [31:0] trunc_ln22_fu_159_p4;
wire   [31:0] trunc_ln23_fu_174_p4;
wire   [0:0] icmp_ln53_fu_189_p2;
wire   [0:0] icmp_ln53_1_fu_195_p2;
wire    ap_CS_fsm_state6;
wire   [31:0] bitcast_ln27_fu_219_p1;
wire   [7:0] tmp_s_fu_222_p4;
wire   [22:0] trunc_ln27_fu_232_p1;
wire   [0:0] icmp_ln27_8_fu_242_p2;
wire   [0:0] icmp_ln27_fu_236_p2;
wire   [0:0] or_ln27_fu_248_p2;
wire   [0:0] grp_fu_80_p2;
wire   [0:0] and_ln27_fu_254_p2;
wire   [31:0] bitcast_ln30_fu_266_p1;
wire   [7:0] tmp_185_fu_269_p4;
wire   [22:0] trunc_ln30_fu_279_p1;
wire   [0:0] icmp_ln30_8_fu_289_p2;
wire   [0:0] icmp_ln30_fu_283_p2;
wire   [0:0] or_ln30_fu_295_p2;
wire   [0:0] grp_fu_85_p2;
wire   [0:0] and_ln30_fu_301_p2;
wire   [31:0] bitcast_ln38_fu_313_p1;
wire   [7:0] tmp_187_fu_316_p4;
wire   [22:0] trunc_ln38_fu_326_p1;
wire   [0:0] icmp_ln38_8_fu_336_p2;
wire   [0:0] icmp_ln38_fu_330_p2;
wire   [0:0] or_ln38_fu_342_p2;
wire   [0:0] grp_fu_90_p2;
wire   [0:0] and_ln38_fu_348_p2;
wire   [0:0] and_ln27_4_fu_360_p2;
wire   [0:0] xor_ln30_fu_307_p2;
wire   [0:0] and_ln30_4_fu_365_p2;
wire   [0:0] xor_ln38_fu_354_p2;
wire   [0:0] and_ln38_4_fu_377_p2;
wire   [0:0] and_ln38_5_fu_383_p2;
wire   [31:0] select_ln30_fu_371_p3;
wire   [31:0] select_ln38_fu_389_p3;
wire   [31:0] select_ln53_fu_396_p3;
wire   [31:0] select_ln30_3_fu_408_p3;
wire   [31:0] select_ln38_12_fu_414_p3;
wire   [31:0] select_ln53_2_fu_421_p3;
wire   [0:0] or_ln38_4_fu_434_p2;
wire   [31:0] select_ln38_13_fu_440_p3;
wire   [31:0] select_ln53_4_fu_447_p3;
wire   [0:0] xor_ln27_fu_260_p2;
wire   [31:0] select_ln53_6_fu_470_p3;
wire   [0:0] and_ln27_5_fu_461_p2;
wire   [0:0] or_ln53_fu_466_p2;
wire   [31:0] add_ln53_fu_478_p2;
wire   [0:0] or_ln53_1_fu_497_p2;
wire   [31:0] select_ln53_8_fu_490_p3;
wire   [31:0] select_ln53_7_fu_483_p3;
wire   [31:0] c_p_10_fu_503_p3;
wire   [31:0] select_ln53_1_fu_402_p3;
wire   [31:0] select_ln53_3_fu_427_p3;
wire   [31:0] select_ln53_5_fu_454_p3;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
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
fadd_32ns_32ns_32_4_full_dsp_1_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_68_p0),
    .din1(grp_fu_68_p1),
    .ce(1'b1),
    .dout(grp_fu_68_p2)
);

ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U32(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_72_p0),
    .din1(grp_fu_72_p1),
    .ce(1'b1),
    .dout(grp_fu_72_p2)
);

ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_76_p0),
    .din1(grp_fu_76_p1),
    .ce(1'b1),
    .dout(grp_fu_76_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U34(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add1_reg_600),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_80_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U35(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add2_reg_607),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_85_p2)
);

ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U36(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add3_reg_616),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_90_p2)
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
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_0_preg <= c_p_10_fu_503_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_1_preg <= select_ln53_1_fu_402_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_2_preg <= select_ln53_3_fu_427_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_3_preg <= select_ln53_5_fu_454_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add1_reg_600 <= grp_fu_68_p2;
        add2_reg_607 <= grp_fu_72_p2;
        add3_reg_616 <= grp_fu_76_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        and_ln53_reg_578 <= and_ln53_fu_201_p2;
        icmp_ln53_2_reg_584 <= icmp_ln53_2_fu_207_p2;
        icmp_ln53_3_reg_592 <= icmp_ln53_3_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        bitcast_ln51_2_reg_549 <= bitcast_ln51_2_fu_124_p1;
        bitcast_ln51_3_reg_556 <= bitcast_ln51_3_fu_139_p1;
        bitcast_ln51_reg_542 <= bitcast_ln51_fu_109_p1;
        bitcast_ln55_reg_563 <= bitcast_ln55_fu_154_p1;
        bitcast_ln65_reg_568 <= bitcast_ln65_fu_169_p1;
        c_p_reg_535 <= c_p_fu_95_p1;
    end
end

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

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_0 = c_p_10_fu_503_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_1 = select_ln53_1_fu_402_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_2 = select_ln53_3_fu_427_p3;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_3 = select_ln53_5_fu_454_p3;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if (((icmp_ln53_3_reg_592 == 1'd0) & (icmp_ln53_2_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_68_p0 = bitcast_ln51_3_reg_556;
    end else if (((icmp_ln53_3_reg_592 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_68_p0 = bitcast_ln51_2_reg_549;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_68_p0 = bitcast_ln51_fu_109_p1;
    end else begin
        grp_fu_68_p0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln53_3_reg_592 == 1'd0) & (icmp_ln53_2_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln53_3_reg_592 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        grp_fu_68_p1 = bitcast_ln55_reg_563;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_68_p1 = bitcast_ln55_fu_154_p1;
    end else begin
        grp_fu_68_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_72_p0 = bitcast_ln51_3_reg_556;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_72_p0 = bitcast_ln51_2_fu_124_p1;
    end else begin
        grp_fu_72_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_72_p1 = bitcast_ln65_reg_568;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_72_p1 = bitcast_ln65_fu_169_p1;
    end else begin
        grp_fu_72_p1 = 'bx;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln53_fu_478_p2 = (c_p_reg_535 + select_ln53_6_fu_470_p3);

assign and_ln27_4_fu_360_p2 = (and_ln53_reg_578 & and_ln27_fu_254_p2);

assign and_ln27_5_fu_461_p2 = (xor_ln27_fu_260_p2 & and_ln53_reg_578);

assign and_ln27_fu_254_p2 = (or_ln27_fu_248_p2 & grp_fu_80_p2);

assign and_ln30_4_fu_365_p2 = (xor_ln30_fu_307_p2 & and_ln27_4_fu_360_p2);

assign and_ln30_fu_301_p2 = (or_ln30_fu_295_p2 & grp_fu_85_p2);

assign and_ln38_4_fu_377_p2 = (xor_ln38_fu_354_p2 & and_ln30_fu_301_p2);

assign and_ln38_5_fu_383_p2 = (and_ln38_4_fu_377_p2 & and_ln27_4_fu_360_p2);

assign and_ln38_fu_348_p2 = (or_ln38_fu_342_p2 & grp_fu_90_p2);

assign and_ln53_fu_201_p2 = (icmp_ln53_fu_189_p2 & icmp_ln53_1_fu_195_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign bitcast_ln27_fu_219_p1 = add1_reg_600;

assign bitcast_ln30_fu_266_p1 = add2_reg_607;

assign bitcast_ln38_fu_313_p1 = add3_reg_616;

assign bitcast_ln51_2_fu_124_p1 = trunc_ln51_3_fu_114_p4;

assign bitcast_ln51_3_fu_139_p1 = trunc_ln51_4_fu_129_p4;

assign bitcast_ln51_fu_109_p1 = trunc_ln51_2_fu_99_p4;

assign bitcast_ln55_fu_154_p1 = trunc_ln_fu_144_p4;

assign bitcast_ln65_fu_169_p1 = trunc_ln22_fu_159_p4;

assign c_p_10_fu_503_p3 = ((or_ln53_1_fu_497_p2[0:0] == 1'b1) ? select_ln53_8_fu_490_p3 : select_ln53_7_fu_483_p3);

assign c_p_fu_95_p1 = p_read14[31:0];

assign grp_fu_76_p0 = trunc_ln51_4_fu_129_p4;

assign grp_fu_76_p1 = trunc_ln23_fu_174_p4;

assign icmp_ln27_8_fu_242_p2 = ((trunc_ln27_fu_232_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_fu_236_p2 = ((tmp_s_fu_222_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln30_8_fu_289_p2 = ((trunc_ln30_fu_279_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_283_p2 = ((tmp_185_fu_269_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln38_8_fu_336_p2 = ((trunc_ln38_fu_326_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln38_fu_330_p2 = ((tmp_187_fu_316_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln53_1_fu_195_p2 = ((diff_p != 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln53_2_fu_207_p2 = ((diff_p == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln53_3_fu_213_p2 = ((diff_p == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_189_p2 = ((diff_p != 2'd1) ? 1'b1 : 1'b0);

assign or_ln27_fu_248_p2 = (icmp_ln27_fu_236_p2 | icmp_ln27_8_fu_242_p2);

assign or_ln30_fu_295_p2 = (icmp_ln30_fu_283_p2 | icmp_ln30_8_fu_289_p2);

assign or_ln38_4_fu_434_p2 = (and_ln38_5_fu_383_p2 | and_ln30_4_fu_365_p2);

assign or_ln38_fu_342_p2 = (icmp_ln38_fu_330_p2 | icmp_ln38_8_fu_336_p2);

assign or_ln53_1_fu_497_p2 = (or_ln53_fu_466_p2 | or_ln38_4_fu_434_p2);

assign or_ln53_fu_466_p2 = (icmp_ln53_3_reg_592 | icmp_ln53_2_reg_584);

assign select_ln30_3_fu_408_p3 = ((and_ln30_4_fu_365_p2[0:0] == 1'b1) ? add3_reg_616 : add2_reg_607);

assign select_ln30_fu_371_p3 = ((and_ln30_4_fu_365_p2[0:0] == 1'b1) ? add2_reg_607 : add1_reg_600);

assign select_ln38_12_fu_414_p3 = ((and_ln38_5_fu_383_p2[0:0] == 1'b1) ? add2_reg_607 : select_ln30_3_fu_408_p3);

assign select_ln38_13_fu_440_p3 = ((or_ln38_4_fu_434_p2[0:0] == 1'b1) ? 32'd0 : add3_reg_616);

assign select_ln38_fu_389_p3 = ((and_ln38_5_fu_383_p2[0:0] == 1'b1) ? add3_reg_616 : select_ln30_fu_371_p3);

assign select_ln53_1_fu_402_p3 = ((icmp_ln53_3_reg_592[0:0] == 1'b1) ? bitcast_ln51_reg_542 : select_ln53_fu_396_p3);

assign select_ln53_2_fu_421_p3 = ((icmp_ln53_2_reg_584[0:0] == 1'b1) ? bitcast_ln51_2_reg_549 : select_ln38_12_fu_414_p3);

assign select_ln53_3_fu_427_p3 = ((icmp_ln53_3_reg_592[0:0] == 1'b1) ? grp_fu_68_p2 : select_ln53_2_fu_421_p3);

assign select_ln53_4_fu_447_p3 = ((icmp_ln53_2_reg_584[0:0] == 1'b1) ? grp_fu_68_p2 : select_ln38_13_fu_440_p3);

assign select_ln53_5_fu_454_p3 = ((icmp_ln53_3_reg_592[0:0] == 1'b1) ? grp_fu_72_p2 : select_ln53_4_fu_447_p3);

assign select_ln53_6_fu_470_p3 = ((and_ln38_5_fu_383_p2[0:0] == 1'b1) ? 32'd4294967294 : 32'd4294967295);

assign select_ln53_7_fu_483_p3 = ((and_ln27_5_fu_461_p2[0:0] == 1'b1) ? c_p_reg_535 : 32'd0);

assign select_ln53_8_fu_490_p3 = ((or_ln53_fu_466_p2[0:0] == 1'b1) ? c_p_reg_535 : add_ln53_fu_478_p2);

assign select_ln53_fu_396_p3 = ((icmp_ln53_2_reg_584[0:0] == 1'b1) ? bitcast_ln51_reg_542 : select_ln38_fu_389_p3);

assign tmp_185_fu_269_p4 = {{bitcast_ln30_fu_266_p1[30:23]}};

assign tmp_187_fu_316_p4 = {{bitcast_ln38_fu_313_p1[30:23]}};

assign tmp_s_fu_222_p4 = {{bitcast_ln27_fu_219_p1[30:23]}};

assign trunc_ln22_fu_159_p4 = {{p_read25[95:64]}};

assign trunc_ln23_fu_174_p4 = {{p_read25[127:96]}};

assign trunc_ln27_fu_232_p1 = bitcast_ln27_fu_219_p1[22:0];

assign trunc_ln30_fu_279_p1 = bitcast_ln30_fu_266_p1[22:0];

assign trunc_ln38_fu_326_p1 = bitcast_ln38_fu_313_p1[22:0];

assign trunc_ln51_2_fu_99_p4 = {{p_read14[63:32]}};

assign trunc_ln51_3_fu_114_p4 = {{p_read14[95:64]}};

assign trunc_ln51_4_fu_129_p4 = {{p_read14[127:96]}};

assign trunc_ln_fu_144_p4 = {{p_read25[63:32]}};

assign xor_ln27_fu_260_p2 = (1'd1 ^ and_ln27_fu_254_p2);

assign xor_ln30_fu_307_p2 = (1'd1 ^ and_ln30_fu_301_p2);

assign xor_ln38_fu_354_p2 = (1'd1 ^ and_ln38_fu_348_p2);

endmodule //ban_interface_p_sum