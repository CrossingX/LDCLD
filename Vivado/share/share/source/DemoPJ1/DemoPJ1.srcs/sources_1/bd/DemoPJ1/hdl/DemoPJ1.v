//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Wed Feb 13 14:09:30 2019
//Host        : WINDOWS-7T6BJOB running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target DemoPJ1.bd
//Design      : DemoPJ1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DemoPJ1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DemoPJ1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "DemoPJ1.hwdef" *) 
module DemoPJ1
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

  wire MR_n_1;
  wire clk_div_0_clk_out;
  wire clk_in_1;
  wire shift_register_8bit_0_Q0;
  wire shift_register_8bit_0_Q1;
  wire shift_register_8bit_0_Q2;
  wire shift_register_8bit_0_Q3;
  wire shift_register_8bit_0_Q4;
  wire shift_register_8bit_0_Q5;
  wire shift_register_8bit_0_Q6;
  wire shift_register_8bit_0_Q7;
  wire shift_register_8bit_1_Q0;
  wire shift_register_8bit_1_Q1;
  wire shift_register_8bit_1_Q2;
  wire shift_register_8bit_1_Q3;
  wire shift_register_8bit_1_Q4;
  wire shift_register_8bit_1_Q5;
  wire shift_register_8bit_1_Q6;
  wire shift_register_8bit_1_Q7;
  wire xup_nand2_0_y;

  assign MR_n_1 = MR_n;
  assign Q0 = shift_register_8bit_0_Q0;
  assign Q0_1 = shift_register_8bit_1_Q0;
  assign Q1 = shift_register_8bit_0_Q1;
  assign Q1_1 = shift_register_8bit_1_Q1;
  assign Q2 = shift_register_8bit_0_Q2;
  assign Q2_1 = shift_register_8bit_1_Q2;
  assign Q3 = shift_register_8bit_0_Q3;
  assign Q3_1 = shift_register_8bit_1_Q3;
  assign Q4 = shift_register_8bit_0_Q4;
  assign Q4_1 = shift_register_8bit_1_Q4;
  assign Q5 = shift_register_8bit_0_Q5;
  assign Q5_1 = shift_register_8bit_1_Q5;
  assign Q6 = shift_register_8bit_0_Q6;
  assign Q6_1 = shift_register_8bit_1_Q6;
  assign Q7 = shift_register_8bit_0_Q7;
  assign Q7_1 = shift_register_8bit_1_Q7;
  assign clk_in_1 = clk_in;
  DemoPJ1_clk_div_0_0 clk_div_0
       (.clk_in(clk_in_1),
        .clk_out(clk_div_0_clk_out));
  DemoPJ1_shift_register_8bit_0_0 shift_register_8bit_0
       (.CP(clk_div_0_clk_out),
        .DSA(shift_register_8bit_1_Q7),
        .DSB(shift_register_8bit_1_Q7),
        .MR_n(MR_n_1),
        .Q0(shift_register_8bit_0_Q0),
        .Q1(shift_register_8bit_0_Q1),
        .Q2(shift_register_8bit_0_Q2),
        .Q3(shift_register_8bit_0_Q3),
        .Q4(shift_register_8bit_0_Q4),
        .Q5(shift_register_8bit_0_Q5),
        .Q6(shift_register_8bit_0_Q6),
        .Q7(shift_register_8bit_0_Q7));
  DemoPJ1_shift_register_8bit_1_0 shift_register_8bit_1
       (.CP(clk_div_0_clk_out),
        .DSA(xup_nand2_0_y),
        .DSB(xup_nand2_0_y),
        .MR_n(MR_n_1),
        .Q0(shift_register_8bit_1_Q0),
        .Q1(shift_register_8bit_1_Q1),
        .Q2(shift_register_8bit_1_Q2),
        .Q3(shift_register_8bit_1_Q3),
        .Q4(shift_register_8bit_1_Q4),
        .Q5(shift_register_8bit_1_Q5),
        .Q6(shift_register_8bit_1_Q6),
        .Q7(shift_register_8bit_1_Q7));
  DemoPJ1_xup_inv_0_0 xup_inv_0
       (.a(shift_register_8bit_0_Q7),
        .y(xup_nand2_0_y));
endmodule
