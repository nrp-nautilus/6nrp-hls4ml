// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] p_read;
input  [15:0] p_read1;
input  [15:0] p_read2;
input  [15:0] p_read3;
input  [15:0] p_read4;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [9:0] exp_table_address0;
reg    exp_table_ce0;
wire   [16:0] exp_table_q0;
wire   [9:0] exp_table_address1;
reg    exp_table_ce1;
wire   [16:0] exp_table_q1;
wire   [9:0] exp_table_address2;
reg    exp_table_ce2;
wire   [16:0] exp_table_q2;
wire   [9:0] exp_table_address3;
reg    exp_table_ce3;
wire   [16:0] exp_table_q3;
wire   [9:0] exp_table_address4;
reg    exp_table_ce4;
wire   [16:0] exp_table_q4;
wire   [9:0] invert_table_address0;
reg    invert_table_ce0;
wire   [17:0] invert_table_q0;
reg  signed [15:0] p_read_1_reg_890;
wire    ap_block_pp0_stage0_11001;
reg  signed [15:0] p_read_2_reg_897;
reg  signed [15:0] p_read_3_reg_902;
reg  signed [15:0] p_read_4_reg_907;
reg  signed [15:0] p_read_5_reg_912;
wire   [15:0] select_ln66_2_fu_216_p3;
reg   [15:0] select_ln66_2_reg_917;
wire   [9:0] p_Result_14_fu_601_p3;
reg   [9:0] p_Result_14_reg_943;
reg   [16:0] exp_res_V_reg_948;
reg   [16:0] exp_res_V_reg_948_pp0_iter3_reg;
reg   [16:0] exp_res_V_reg_948_pp0_iter4_reg;
reg   [16:0] exp_res_V_5_reg_953;
reg   [16:0] exp_res_V_5_reg_953_pp0_iter3_reg;
reg   [16:0] exp_res_V_5_reg_953_pp0_iter4_reg;
reg   [16:0] exp_res_V_6_reg_958;
reg   [16:0] exp_res_V_6_reg_958_pp0_iter3_reg;
reg   [16:0] exp_res_V_6_reg_958_pp0_iter4_reg;
reg   [16:0] exp_res_V_7_reg_963;
reg   [16:0] exp_res_V_7_reg_963_pp0_iter3_reg;
reg   [16:0] exp_res_V_7_reg_963_pp0_iter4_reg;
wire   [16:0] select_ln302_fu_649_p3;
reg   [16:0] select_ln302_reg_973;
wire   [16:0] select_ln302_1_fu_677_p3;
reg   [16:0] select_ln302_1_reg_979;
reg   [16:0] exp_res_V_8_reg_985;
reg   [16:0] exp_res_V_8_reg_985_pp0_iter4_reg;
reg   [17:0] inv_exp_sum_V_reg_995;
wire   [63:0] zext_ln255_fu_485_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln255_1_fu_516_p1;
wire   [63:0] zext_ln255_2_fu_547_p1;
wire   [63:0] zext_ln255_3_fu_578_p1;
wire   [63:0] zext_ln255_4_fu_625_p1;
wire   [63:0] zext_ln265_fu_757_p1;
wire  signed [15:0] icmp_ln1651_fu_164_p0;
wire  signed [15:0] icmp_ln1651_fu_164_p1;
wire   [0:0] icmp_ln1651_fu_164_p2;
wire   [0:0] xor_ln1651_fu_170_p2;
wire  signed [15:0] select_ln66_fu_176_p1;
wire  signed [15:0] select_ln66_fu_176_p2;
wire  signed [15:0] icmp_ln1651_1_fu_184_p0;
wire  signed [15:0] icmp_ln1651_1_fu_184_p1;
wire   [0:0] icmp_ln1651_1_fu_184_p2;
wire   [0:0] xor_ln1651_1_fu_190_p2;
wire  signed [15:0] select_ln66_1_fu_196_p1;
wire  signed [15:0] select_ln66_1_fu_196_p2;
wire   [15:0] select_ln66_fu_176_p3;
wire   [15:0] select_ln66_1_fu_196_p3;
wire   [0:0] icmp_ln1651_2_fu_204_p2;
wire   [0:0] xor_ln1651_2_fu_210_p2;
wire   [0:0] icmp_ln1651_3_fu_224_p2;
wire   [0:0] xor_ln1651_3_fu_228_p2;
wire   [15:0] x_max_V_fu_234_p3;
wire  signed [16:0] sext_ln1348_fu_240_p1;
wire  signed [16:0] sext_ln1348_1_fu_243_p1;
wire   [16:0] ret_V_fu_247_p2;
wire   [0:0] p_Result_20_fu_253_p3;
wire   [0:0] p_Result_21_fu_261_p3;
wire   [0:0] xor_ln895_fu_269_p2;
wire  signed [16:0] sext_ln1348_2_fu_287_p1;
wire   [16:0] ret_V_1_fu_290_p2;
wire   [0:0] p_Result_22_fu_296_p3;
wire   [0:0] p_Result_23_fu_304_p3;
wire   [0:0] xor_ln895_1_fu_312_p2;
wire  signed [16:0] sext_ln1348_3_fu_330_p1;
wire   [16:0] ret_V_2_fu_333_p2;
wire   [0:0] p_Result_24_fu_339_p3;
wire   [0:0] p_Result_25_fu_347_p3;
wire   [0:0] xor_ln895_2_fu_355_p2;
wire  signed [16:0] sext_ln1348_4_fu_373_p1;
wire   [16:0] ret_V_3_fu_376_p2;
wire   [0:0] p_Result_26_fu_382_p3;
wire   [0:0] p_Result_27_fu_390_p3;
wire   [0:0] xor_ln895_3_fu_398_p2;
wire  signed [16:0] sext_ln1348_5_fu_416_p1;
wire   [16:0] ret_V_4_fu_419_p2;
wire   [0:0] p_Result_28_fu_425_p3;
wire   [0:0] p_Result_29_fu_433_p3;
wire   [0:0] xor_ln895_4_fu_441_p2;
wire   [0:0] overflow_fu_275_p2;
wire   [0:0] xor_ln302_fu_281_p2;
wire   [9:0] select_ln346_fu_459_p3;
wire   [9:0] tmp_fu_467_p4;
wire   [9:0] p_Result_s_fu_477_p3;
wire   [0:0] overflow_1_fu_318_p2;
wire   [0:0] xor_ln302_1_fu_324_p2;
wire   [9:0] select_ln346_1_fu_490_p3;
wire   [9:0] tmp_1_fu_498_p4;
wire   [9:0] p_Result_11_fu_508_p3;
wire   [0:0] overflow_2_fu_361_p2;
wire   [0:0] xor_ln302_2_fu_367_p2;
wire   [9:0] select_ln346_2_fu_521_p3;
wire   [9:0] tmp_2_fu_529_p4;
wire   [9:0] p_Result_12_fu_539_p3;
wire   [0:0] overflow_3_fu_404_p2;
wire   [0:0] xor_ln302_3_fu_410_p2;
wire   [9:0] select_ln346_3_fu_552_p3;
wire   [9:0] tmp_3_fu_560_p4;
wire   [9:0] p_Result_13_fu_570_p3;
wire   [0:0] overflow_4_fu_447_p2;
wire   [0:0] xor_ln302_4_fu_453_p2;
wire   [9:0] select_ln346_4_fu_583_p3;
wire   [9:0] tmp_4_fu_591_p4;
wire   [17:0] zext_ln255_6_fu_613_p1;
wire   [17:0] zext_ln255_5_fu_609_p1;
wire   [17:0] p_Val2_5_fu_629_p2;
wire   [0:0] p_Result_30_fu_641_p3;
wire   [16:0] add_ln856_fu_635_p2;
wire   [17:0] zext_ln255_8_fu_621_p1;
wire   [17:0] zext_ln255_7_fu_617_p1;
wire   [17:0] p_Val2_6_fu_657_p2;
wire   [0:0] p_Result_31_fu_669_p3;
wire   [16:0] add_ln856_1_fu_663_p2;
wire   [17:0] zext_ln813_1_fu_692_p1;
wire   [17:0] zext_ln813_fu_689_p1;
wire   [17:0] p_Val2_7_fu_695_p2;
wire   [0:0] p_Result_32_fu_705_p3;
wire   [16:0] add_ln856_2_fu_701_p2;
wire   [16:0] lhs_fu_713_p3;
wire   [17:0] zext_ln249_fu_685_p1;
wire   [17:0] zext_ln813_2_fu_721_p1;
wire   [17:0] p_Val2_8_fu_725_p2;
wire   [0:0] p_Result_33_fu_731_p3;
wire   [9:0] tmp_5_fu_739_p4;
wire   [9:0] p_Result_19_fu_749_p3;
wire  signed [25:0] mul_ln1270_fu_855_p2;
wire  signed [25:0] mul_ln1270_1_fu_862_p2;
wire  signed [25:0] mul_ln1270_2_fu_869_p2;
wire  signed [25:0] mul_ln1270_3_fu_876_p2;
wire  signed [25:0] mul_ln1270_4_fu_883_p2;
wire  signed [17:0] mul_ln1270_fu_855_p0;
wire  signed [25:0] sext_ln1273_fu_762_p1;
wire   [16:0] mul_ln1270_fu_855_p1;
wire  signed [17:0] mul_ln1270_1_fu_862_p0;
wire   [16:0] mul_ln1270_1_fu_862_p1;
wire  signed [17:0] mul_ln1270_2_fu_869_p0;
wire   [16:0] mul_ln1270_2_fu_869_p1;
wire  signed [17:0] mul_ln1270_3_fu_876_p0;
wire   [16:0] mul_ln1270_3_fu_876_p1;
wire  signed [17:0] mul_ln1270_4_fu_883_p0;
wire   [16:0] mul_ln1270_4_fu_883_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to4;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [25:0] mul_ln1270_1_fu_862_p10;
wire   [25:0] mul_ln1270_2_fu_869_p10;
wire   [25:0] mul_ln1270_3_fu_876_p10;
wire   [25:0] mul_ln1270_4_fu_883_p10;
wire   [25:0] mul_ln1270_fu_855_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s_exp_table_ROM_bkb #(
    .DataWidth( 17 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
exp_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(exp_table_address0),
    .ce0(exp_table_ce0),
    .q0(exp_table_q0),
    .address1(exp_table_address1),
    .ce1(exp_table_ce1),
    .q1(exp_table_q1),
    .address2(exp_table_address2),
    .ce2(exp_table_ce2),
    .q2(exp_table_q2),
    .address3(exp_table_address3),
    .ce3(exp_table_ce3),
    .q3(exp_table_q3),
    .address4(exp_table_address4),
    .ce4(exp_table_ce4),
    .q4(exp_table_q4)
);

myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s_invert_table_Rcud #(
    .DataWidth( 18 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
invert_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(invert_table_address0),
    .ce0(invert_table_ce0),
    .q0(invert_table_q0)
);

myproject_mul_mul_18s_17ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 26 ))
mul_mul_18s_17ns_26_1_1_U2826(
    .din0(mul_ln1270_fu_855_p0),
    .din1(mul_ln1270_fu_855_p1),
    .dout(mul_ln1270_fu_855_p2)
);

myproject_mul_mul_18s_17ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 26 ))
mul_mul_18s_17ns_26_1_1_U2827(
    .din0(mul_ln1270_1_fu_862_p0),
    .din1(mul_ln1270_1_fu_862_p1),
    .dout(mul_ln1270_1_fu_862_p2)
);

myproject_mul_mul_18s_17ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 26 ))
mul_mul_18s_17ns_26_1_1_U2828(
    .din0(mul_ln1270_2_fu_869_p0),
    .din1(mul_ln1270_2_fu_869_p1),
    .dout(mul_ln1270_2_fu_869_p2)
);

myproject_mul_mul_18s_17ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 26 ))
mul_mul_18s_17ns_26_1_1_U2829(
    .din0(mul_ln1270_3_fu_876_p0),
    .din1(mul_ln1270_3_fu_876_p1),
    .dout(mul_ln1270_3_fu_876_p2)
);

myproject_mul_mul_18s_17ns_26_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 26 ))
mul_mul_18s_17ns_26_1_1_U2830(
    .din0(mul_ln1270_4_fu_883_p0),
    .din1(mul_ln1270_4_fu_883_p1),
    .dout(mul_ln1270_4_fu_883_p2)
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        exp_res_V_5_reg_953 <= exp_table_q3;
        exp_res_V_6_reg_958 <= exp_table_q2;
        exp_res_V_7_reg_963 <= exp_table_q1;
        exp_res_V_reg_948 <= exp_table_q4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        exp_res_V_5_reg_953_pp0_iter3_reg <= exp_res_V_5_reg_953;
        exp_res_V_5_reg_953_pp0_iter4_reg <= exp_res_V_5_reg_953_pp0_iter3_reg;
        exp_res_V_6_reg_958_pp0_iter3_reg <= exp_res_V_6_reg_958;
        exp_res_V_6_reg_958_pp0_iter4_reg <= exp_res_V_6_reg_958_pp0_iter3_reg;
        exp_res_V_7_reg_963_pp0_iter3_reg <= exp_res_V_7_reg_963;
        exp_res_V_7_reg_963_pp0_iter4_reg <= exp_res_V_7_reg_963_pp0_iter3_reg;
        exp_res_V_8_reg_985_pp0_iter4_reg <= exp_res_V_8_reg_985;
        exp_res_V_reg_948_pp0_iter3_reg <= exp_res_V_reg_948;
        exp_res_V_reg_948_pp0_iter4_reg <= exp_res_V_reg_948_pp0_iter3_reg;
        inv_exp_sum_V_reg_995 <= invert_table_q0;
        select_ln302_1_reg_979 <= select_ln302_1_fu_677_p3;
        select_ln302_reg_973 <= select_ln302_fu_649_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce))) begin
        exp_res_V_8_reg_985 <= exp_table_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_14_reg_943 <= p_Result_14_fu_601_p3;
        p_read_1_reg_890 <= p_read4;
        p_read_2_reg_897 <= p_read3;
        p_read_3_reg_902 <= p_read2;
        p_read_4_reg_907 <= p_read1;
        p_read_5_reg_912 <= p_read;
        select_ln66_2_reg_917 <= select_ln66_2_fu_216_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        exp_table_ce0 = 1'b1;
    end else begin
        exp_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exp_table_ce1 = 1'b1;
    end else begin
        exp_table_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exp_table_ce2 = 1'b1;
    end else begin
        exp_table_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exp_table_ce3 = 1'b1;
    end else begin
        exp_table_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exp_table_ce4 = 1'b1;
    end else begin
        exp_table_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce))) begin
        invert_table_ce0 = 1'b1;
    end else begin
        invert_table_ce0 = 1'b0;
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

assign add_ln856_1_fu_663_p2 = (exp_table_q1 + exp_table_q2);

assign add_ln856_2_fu_701_p2 = (select_ln302_1_reg_979 + select_ln302_reg_973);

assign add_ln856_fu_635_p2 = (exp_table_q3 + exp_table_q4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return_0 = {{mul_ln1270_fu_855_p2[25:10]}};

assign ap_return_1 = {{mul_ln1270_1_fu_862_p2[25:10]}};

assign ap_return_2 = {{mul_ln1270_2_fu_869_p2[25:10]}};

assign ap_return_3 = {{mul_ln1270_3_fu_876_p2[25:10]}};

assign ap_return_4 = {{mul_ln1270_4_fu_883_p2[25:10]}};

assign exp_table_address0 = zext_ln255_4_fu_625_p1;

assign exp_table_address1 = zext_ln255_3_fu_578_p1;

assign exp_table_address2 = zext_ln255_2_fu_547_p1;

assign exp_table_address3 = zext_ln255_1_fu_516_p1;

assign exp_table_address4 = zext_ln255_fu_485_p1;

assign icmp_ln1651_1_fu_184_p0 = p_read2;

assign icmp_ln1651_1_fu_184_p1 = p_read3;

assign icmp_ln1651_1_fu_184_p2 = (($signed(icmp_ln1651_1_fu_184_p0) < $signed(icmp_ln1651_1_fu_184_p1)) ? 1'b1 : 1'b0);

assign icmp_ln1651_2_fu_204_p2 = (($signed(select_ln66_fu_176_p3) < $signed(select_ln66_1_fu_196_p3)) ? 1'b1 : 1'b0);

assign icmp_ln1651_3_fu_224_p2 = (($signed(select_ln66_2_reg_917) < $signed(p_read_1_reg_890)) ? 1'b1 : 1'b0);

assign icmp_ln1651_fu_164_p0 = p_read;

assign icmp_ln1651_fu_164_p1 = p_read1;

assign icmp_ln1651_fu_164_p2 = (($signed(icmp_ln1651_fu_164_p0) < $signed(icmp_ln1651_fu_164_p1)) ? 1'b1 : 1'b0);

assign invert_table_address0 = zext_ln265_fu_757_p1;

assign lhs_fu_713_p3 = ((p_Result_32_fu_705_p3[0:0] == 1'b1) ? 17'd131071 : add_ln856_2_fu_701_p2);

assign mul_ln1270_1_fu_862_p0 = sext_ln1273_fu_762_p1;

assign mul_ln1270_1_fu_862_p1 = mul_ln1270_1_fu_862_p10;

assign mul_ln1270_1_fu_862_p10 = exp_res_V_5_reg_953_pp0_iter4_reg;

assign mul_ln1270_2_fu_869_p0 = sext_ln1273_fu_762_p1;

assign mul_ln1270_2_fu_869_p1 = mul_ln1270_2_fu_869_p10;

assign mul_ln1270_2_fu_869_p10 = exp_res_V_6_reg_958_pp0_iter4_reg;

assign mul_ln1270_3_fu_876_p0 = sext_ln1273_fu_762_p1;

assign mul_ln1270_3_fu_876_p1 = mul_ln1270_3_fu_876_p10;

assign mul_ln1270_3_fu_876_p10 = exp_res_V_7_reg_963_pp0_iter4_reg;

assign mul_ln1270_4_fu_883_p0 = sext_ln1273_fu_762_p1;

assign mul_ln1270_4_fu_883_p1 = mul_ln1270_4_fu_883_p10;

assign mul_ln1270_4_fu_883_p10 = exp_res_V_8_reg_985_pp0_iter4_reg;

assign mul_ln1270_fu_855_p0 = sext_ln1273_fu_762_p1;

assign mul_ln1270_fu_855_p1 = mul_ln1270_fu_855_p10;

assign mul_ln1270_fu_855_p10 = exp_res_V_reg_948_pp0_iter4_reg;

assign overflow_1_fu_318_p2 = (xor_ln895_1_fu_312_p2 & p_Result_23_fu_304_p3);

assign overflow_2_fu_361_p2 = (xor_ln895_2_fu_355_p2 & p_Result_25_fu_347_p3);

assign overflow_3_fu_404_p2 = (xor_ln895_3_fu_398_p2 & p_Result_27_fu_390_p3);

assign overflow_4_fu_447_p2 = (xor_ln895_4_fu_441_p2 & p_Result_29_fu_433_p3);

assign overflow_fu_275_p2 = (xor_ln895_fu_269_p2 & p_Result_21_fu_261_p3);

assign p_Result_11_fu_508_p3 = ((xor_ln302_1_fu_324_p2[0:0] == 1'b1) ? select_ln346_1_fu_490_p3 : tmp_1_fu_498_p4);

assign p_Result_12_fu_539_p3 = ((xor_ln302_2_fu_367_p2[0:0] == 1'b1) ? select_ln346_2_fu_521_p3 : tmp_2_fu_529_p4);

assign p_Result_13_fu_570_p3 = ((xor_ln302_3_fu_410_p2[0:0] == 1'b1) ? select_ln346_3_fu_552_p3 : tmp_3_fu_560_p4);

assign p_Result_14_fu_601_p3 = ((xor_ln302_4_fu_453_p2[0:0] == 1'b1) ? select_ln346_4_fu_583_p3 : tmp_4_fu_591_p4);

assign p_Result_19_fu_749_p3 = ((p_Result_33_fu_731_p3[0:0] == 1'b1) ? 10'd511 : tmp_5_fu_739_p4);

assign p_Result_20_fu_253_p3 = ret_V_fu_247_p2[32'd16];

assign p_Result_21_fu_261_p3 = ret_V_fu_247_p2[32'd15];

assign p_Result_22_fu_296_p3 = ret_V_1_fu_290_p2[32'd16];

assign p_Result_23_fu_304_p3 = ret_V_1_fu_290_p2[32'd15];

assign p_Result_24_fu_339_p3 = ret_V_2_fu_333_p2[32'd16];

assign p_Result_25_fu_347_p3 = ret_V_2_fu_333_p2[32'd15];

assign p_Result_26_fu_382_p3 = ret_V_3_fu_376_p2[32'd16];

assign p_Result_27_fu_390_p3 = ret_V_3_fu_376_p2[32'd15];

assign p_Result_28_fu_425_p3 = ret_V_4_fu_419_p2[32'd16];

assign p_Result_29_fu_433_p3 = ret_V_4_fu_419_p2[32'd15];

assign p_Result_30_fu_641_p3 = p_Val2_5_fu_629_p2[32'd17];

assign p_Result_31_fu_669_p3 = p_Val2_6_fu_657_p2[32'd17];

assign p_Result_32_fu_705_p3 = p_Val2_7_fu_695_p2[32'd17];

assign p_Result_33_fu_731_p3 = p_Val2_8_fu_725_p2[32'd17];

assign p_Result_s_fu_477_p3 = ((xor_ln302_fu_281_p2[0:0] == 1'b1) ? select_ln346_fu_459_p3 : tmp_fu_467_p4);

assign p_Val2_5_fu_629_p2 = (zext_ln255_6_fu_613_p1 + zext_ln255_5_fu_609_p1);

assign p_Val2_6_fu_657_p2 = (zext_ln255_8_fu_621_p1 + zext_ln255_7_fu_617_p1);

assign p_Val2_7_fu_695_p2 = (zext_ln813_1_fu_692_p1 + zext_ln813_fu_689_p1);

assign p_Val2_8_fu_725_p2 = (zext_ln249_fu_685_p1 + zext_ln813_2_fu_721_p1);

assign ret_V_1_fu_290_p2 = ($signed(sext_ln1348_2_fu_287_p1) - $signed(sext_ln1348_1_fu_243_p1));

assign ret_V_2_fu_333_p2 = ($signed(sext_ln1348_3_fu_330_p1) - $signed(sext_ln1348_1_fu_243_p1));

assign ret_V_3_fu_376_p2 = ($signed(sext_ln1348_4_fu_373_p1) - $signed(sext_ln1348_1_fu_243_p1));

assign ret_V_4_fu_419_p2 = ($signed(sext_ln1348_5_fu_416_p1) - $signed(sext_ln1348_1_fu_243_p1));

assign ret_V_fu_247_p2 = ($signed(sext_ln1348_fu_240_p1) - $signed(sext_ln1348_1_fu_243_p1));

assign select_ln302_1_fu_677_p3 = ((p_Result_31_fu_669_p3[0:0] == 1'b1) ? 17'd131071 : add_ln856_1_fu_663_p2);

assign select_ln302_fu_649_p3 = ((p_Result_30_fu_641_p3[0:0] == 1'b1) ? 17'd131071 : add_ln856_fu_635_p2);

assign select_ln346_1_fu_490_p3 = ((overflow_1_fu_318_p2[0:0] == 1'b1) ? 10'd511 : 10'd512);

assign select_ln346_2_fu_521_p3 = ((overflow_2_fu_361_p2[0:0] == 1'b1) ? 10'd511 : 10'd512);

assign select_ln346_3_fu_552_p3 = ((overflow_3_fu_404_p2[0:0] == 1'b1) ? 10'd511 : 10'd512);

assign select_ln346_4_fu_583_p3 = ((overflow_4_fu_447_p2[0:0] == 1'b1) ? 10'd511 : 10'd512);

assign select_ln346_fu_459_p3 = ((overflow_fu_275_p2[0:0] == 1'b1) ? 10'd511 : 10'd512);

assign select_ln66_1_fu_196_p1 = p_read2;

assign select_ln66_1_fu_196_p2 = p_read3;

assign select_ln66_1_fu_196_p3 = ((xor_ln1651_1_fu_190_p2[0:0] == 1'b1) ? select_ln66_1_fu_196_p1 : select_ln66_1_fu_196_p2);

assign select_ln66_2_fu_216_p3 = ((xor_ln1651_2_fu_210_p2[0:0] == 1'b1) ? select_ln66_fu_176_p3 : select_ln66_1_fu_196_p3);

assign select_ln66_fu_176_p1 = p_read;

assign select_ln66_fu_176_p2 = p_read1;

assign select_ln66_fu_176_p3 = ((xor_ln1651_fu_170_p2[0:0] == 1'b1) ? select_ln66_fu_176_p1 : select_ln66_fu_176_p2);

assign sext_ln1273_fu_762_p1 = $signed(inv_exp_sum_V_reg_995);

assign sext_ln1348_1_fu_243_p1 = $signed(x_max_V_fu_234_p3);

assign sext_ln1348_2_fu_287_p1 = p_read_4_reg_907;

assign sext_ln1348_3_fu_330_p1 = p_read_3_reg_902;

assign sext_ln1348_4_fu_373_p1 = p_read_2_reg_897;

assign sext_ln1348_5_fu_416_p1 = p_read_1_reg_890;

assign sext_ln1348_fu_240_p1 = p_read_5_reg_912;

assign tmp_1_fu_498_p4 = {{ret_V_1_fu_290_p2[15:6]}};

assign tmp_2_fu_529_p4 = {{ret_V_2_fu_333_p2[15:6]}};

assign tmp_3_fu_560_p4 = {{ret_V_3_fu_376_p2[15:6]}};

assign tmp_4_fu_591_p4 = {{ret_V_4_fu_419_p2[15:6]}};

assign tmp_5_fu_739_p4 = {{p_Val2_8_fu_725_p2[17:8]}};

assign tmp_fu_467_p4 = {{ret_V_fu_247_p2[15:6]}};

assign x_max_V_fu_234_p3 = ((xor_ln1651_3_fu_228_p2[0:0] == 1'b1) ? select_ln66_2_reg_917 : p_read_1_reg_890);

assign xor_ln1651_1_fu_190_p2 = (icmp_ln1651_1_fu_184_p2 ^ 1'd1);

assign xor_ln1651_2_fu_210_p2 = (icmp_ln1651_2_fu_204_p2 ^ 1'd1);

assign xor_ln1651_3_fu_228_p2 = (icmp_ln1651_3_fu_224_p2 ^ 1'd1);

assign xor_ln1651_fu_170_p2 = (icmp_ln1651_fu_164_p2 ^ 1'd1);

assign xor_ln302_1_fu_324_p2 = (p_Result_23_fu_304_p3 ^ p_Result_22_fu_296_p3);

assign xor_ln302_2_fu_367_p2 = (p_Result_25_fu_347_p3 ^ p_Result_24_fu_339_p3);

assign xor_ln302_3_fu_410_p2 = (p_Result_27_fu_390_p3 ^ p_Result_26_fu_382_p3);

assign xor_ln302_4_fu_453_p2 = (p_Result_29_fu_433_p3 ^ p_Result_28_fu_425_p3);

assign xor_ln302_fu_281_p2 = (p_Result_21_fu_261_p3 ^ p_Result_20_fu_253_p3);

assign xor_ln895_1_fu_312_p2 = (p_Result_22_fu_296_p3 ^ 1'd1);

assign xor_ln895_2_fu_355_p2 = (p_Result_24_fu_339_p3 ^ 1'd1);

assign xor_ln895_3_fu_398_p2 = (p_Result_26_fu_382_p3 ^ 1'd1);

assign xor_ln895_4_fu_441_p2 = (p_Result_28_fu_425_p3 ^ 1'd1);

assign xor_ln895_fu_269_p2 = (p_Result_20_fu_253_p3 ^ 1'd1);

assign zext_ln249_fu_685_p1 = exp_table_q0;

assign zext_ln255_1_fu_516_p1 = p_Result_11_fu_508_p3;

assign zext_ln255_2_fu_547_p1 = p_Result_12_fu_539_p3;

assign zext_ln255_3_fu_578_p1 = p_Result_13_fu_570_p3;

assign zext_ln255_4_fu_625_p1 = p_Result_14_reg_943;

assign zext_ln255_5_fu_609_p1 = exp_table_q4;

assign zext_ln255_6_fu_613_p1 = exp_table_q3;

assign zext_ln255_7_fu_617_p1 = exp_table_q2;

assign zext_ln255_8_fu_621_p1 = exp_table_q1;

assign zext_ln255_fu_485_p1 = p_Result_s_fu_477_p3;

assign zext_ln265_fu_757_p1 = p_Result_19_fu_749_p3;

assign zext_ln813_1_fu_692_p1 = select_ln302_1_reg_979;

assign zext_ln813_2_fu_721_p1 = lhs_fu_713_p3;

assign zext_ln813_fu_689_p1 = select_ln302_reg_973;

endmodule //myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s
