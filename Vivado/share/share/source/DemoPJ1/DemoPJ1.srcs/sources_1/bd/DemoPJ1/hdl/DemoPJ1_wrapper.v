//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Wed Feb 13 14:09:30 2019
//Host        : WINDOWS-7T6BJOB running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target DemoPJ1_wrapper.bd
//Design      : DemoPJ1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DemoPJ1_wrapper
   (MR_n,
    Q0,
    Q0_1,
    Q1,
    Q1_1,
    Q2,
    Q2_1,
    Q3,
    Q3_1,
    Q4,
    Q4_1,
    Q5,
    Q5_1,
    Q6,
    Q6_1,
    Q7,
    Q7_1,
    clk_in);
  input MR_n;
  output Q0;
  output Q0_1;
  output Q1;
  output Q1_1;
  output Q2;
  output Q2_1;
  output Q3;
  output Q3_1;
  output Q4;
  output Q4_1;
  output Q5;
  output Q5_1;
  output Q6;
  output Q6_1;
  output Q7;
  output Q7_1;
  input clk_in;

  wire MR_n;
  wire Q0;
  wire Q0_1;
  wire Q1;
  wire Q1_1;
  wire Q2;
  wire Q2_1;
  wire Q3;
  wire Q3_1;
  wire Q4;
  wire Q4_1;
  wire Q5;
  wire Q5_1;
  wire Q6;
  wire Q6_1;
  wire Q7;
  wire Q7_1;
  wire clk_in;

  DemoPJ1 DemoPJ1_i
       (.MR_n(MR_n),
        .Q0(Q0),
        .Q0_1(Q0_1),
        .Q1(Q1),
        .Q1_1(Q1_1),
        .Q2(Q2),
        .Q2_1(Q2_1),
        .Q3(Q3),
        .Q3_1(Q3_1),
        .Q4(Q4),
        .Q4_1(Q4_1),
        .Q5(Q5),
        .Q5_1(Q5_1),
        .Q6(Q6),
        .Q6_1(Q6_1),
        .Q7(Q7),
        .Q7_1(Q7_1),
        .clk_in(clk_in));
endmodule
