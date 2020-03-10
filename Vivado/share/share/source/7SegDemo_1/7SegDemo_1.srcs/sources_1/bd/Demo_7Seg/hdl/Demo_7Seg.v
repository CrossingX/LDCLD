//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Tue Oct 17 10:47:42 2017
//Host        : WINDOWS-7T6BJOB running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target Demo_7Seg.bd
//Design      : Demo_7Seg
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Demo_7Seg,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Demo_7Seg,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "Demo_7Seg.hwdef" *) 
module Demo_7Seg
   (AN0,
    BI_RBO,
    DP,
    GND,
    a,
    b,
    c,
    clk_in,
    d,
    e,
    f,
    g);
  output AN0;
  inout BI_RBO;
  input DP;
  input GND;
  output a;
  output b;
  output c;
  input clk_in;
  output d;
  output e;
  output f;
  output g;

  wire BCD2SEG7_0_a;
  wire BCD2SEG7_0_b;
  wire BCD2SEG7_0_c;
  wire BCD2SEG7_0_d;
  wire BCD2SEG7_0_e;
  wire BCD2SEG7_0_f;
  wire BCD2SEG7_0_g;
  wire DP_1;
  wire GND_1;
  wire Net;
  wire clk_div_0_clk_out;
  wire clk_in_1;
  wire decimal_counter_0_Qa;
  wire decimal_counter_0_Qb;
  wire decimal_counter_0_Qc;
  wire decimal_counter_0_Qd;

  assign AN0 = GND_1;
  assign DP_1 = DP;
  assign GND_1 = GND;
  assign a = BCD2SEG7_0_a;
  assign b = BCD2SEG7_0_b;
  assign c = BCD2SEG7_0_c;
  assign clk_in_1 = clk_in;
  assign d = BCD2SEG7_0_d;
  assign e = BCD2SEG7_0_e;
  assign f = BCD2SEG7_0_f;
  assign g = BCD2SEG7_0_g;
  Demo_7Seg_BCD2SEG7_0_0 BCD2SEG7_0
       (.BCD_A(decimal_counter_0_Qa),
        .BCD_B(decimal_counter_0_Qb),
        .BCD_C(decimal_counter_0_Qc),
        .BCD_D(decimal_counter_0_Qd),
        .BI_RBO_n(BI_RBO),
        .LT_n(DP_1),
        .RBI_n(DP_1),
        .a(BCD2SEG7_0_a),
        .b(BCD2SEG7_0_b),
        .c(BCD2SEG7_0_c),
        .d(BCD2SEG7_0_d),
        .e(BCD2SEG7_0_e),
        .f(BCD2SEG7_0_f),
        .g(BCD2SEG7_0_g));
  Demo_7Seg_clk_div_0_0 clk_div_0
       (.clk_in(clk_in_1),
        .clk_out(clk_div_0_clk_out));
  Demo_7Seg_decimal_counter_0_0 decimal_counter_0
       (.CP1_n(clk_div_0_clk_out),
        .CP2_n(decimal_counter_0_Qa),
        .Qa(decimal_counter_0_Qa),
        .Qb(decimal_counter_0_Qb),
        .Qc(decimal_counter_0_Qc),
        .Qd(decimal_counter_0_Qd),
        .R0_1(GND_1),
        .R0_2(GND_1),
        .R9_1(GND_1),
        .R9_2(GND_1));
endmodule
