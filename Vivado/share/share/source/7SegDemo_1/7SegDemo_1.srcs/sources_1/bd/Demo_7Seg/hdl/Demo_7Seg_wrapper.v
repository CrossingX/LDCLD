//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Tue Oct 17 10:47:42 2017
//Host        : WINDOWS-7T6BJOB running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target Demo_7Seg_wrapper.bd
//Design      : Demo_7Seg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Demo_7Seg_wrapper
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

  wire AN0;
  wire BI_RBO;
  wire DP;
  wire GND;
  wire a;
  wire b;
  wire c;
  wire clk_in;
  wire d;
  wire e;
  wire f;
  wire g;

  Demo_7Seg Demo_7Seg_i
       (.AN0(AN0),
        .BI_RBO(BI_RBO),
        .DP(DP),
        .GND(GND),
        .a(a),
        .b(b),
        .c(c),
        .clk_in(clk_in),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
