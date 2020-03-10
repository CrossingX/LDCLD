//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Wed Nov 22 09:20:28 2017
//Host        : WINDOWS-7T6BJOB running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target xup_jk.bd
//Design      : xup_jk
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "xup_jk,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xup_jk,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "xup_jk.hwdef" *) 
module xup_jk
   (CLR1_n,
    CLR2_n,
    CP1,
    CP2,
    J1,
    J2,
    K1,
    K2,
    PR1_n,
    PR2_n,
    Q1,
    Q1_n,
    Q2,
    Q2_n);
  input CLR1_n;
  input CLR2_n;
  input CP1;
  input CP2;
  input J1;
  input J2;
  input K1;
  input K2;
  input PR1_n;
  input PR2_n;
  output Q1;
  output Q1_n;
  output Q2;
  output Q2_n;

  wire CLK1_1;
  wire CLK2_1;
  wire CLR1_n_1;
  wire CLR2_n_1;
  wire D_FlipFlop_Set_Reset_0_Q1;
  wire D_FlipFlop_Set_Reset_0_Q1_n;
  wire D_FlipFlop_Set_Reset_0_Q2;
  wire D_FlipFlop_Set_Reset_0_Q2_n;
  wire J1_1;
  wire J2_1;
  wire K1_1;
  wire K2_1;
  wire PR1_n_1;
  wire PR2_n_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and2_2_y;
  wire xup_and2_3_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_or2_0_y;
  wire xup_or2_1_y;

  assign CLK1_1 = CP1;
  assign CLK2_1 = CP2;
  assign CLR1_n_1 = CLR1_n;
  assign CLR2_n_1 = CLR2_n;
  assign J1_1 = J1;
  assign J2_1 = J2;
  assign K1_1 = K1;
  assign K2_1 = K2;
  assign PR1_n_1 = PR1_n;
  assign PR2_n_1 = PR2_n;
  assign Q1 = D_FlipFlop_Set_Reset_0_Q1;
  assign Q1_n = D_FlipFlop_Set_Reset_0_Q1_n;
  assign Q2 = D_FlipFlop_Set_Reset_0_Q2;
  assign Q2_n = D_FlipFlop_Set_Reset_0_Q2_n;
  xup_jk_D_FlipFlop_Set_Reset_0_0 D_FlipFlop_Set_Reset_0
       (.CLK1(CLK1_1),
        .CLK2(CLK2_1),
        .CLR1_n(CLR1_n_1),
        .CLR2_n(CLR2_n_1),
        .D1(xup_or2_0_y),
        .D2(xup_or2_1_y),
        .PR1_n(PR1_n_1),
        .PR2_n(PR2_n_1),
        .Q1(D_FlipFlop_Set_Reset_0_Q1),
        .Q1_n(D_FlipFlop_Set_Reset_0_Q1_n),
        .Q2(D_FlipFlop_Set_Reset_0_Q2),
        .Q2_n(D_FlipFlop_Set_Reset_0_Q2_n));
  xup_jk_xup_and2_0_0 xup_and2_0
       (.a(xup_inv_0_y),
        .b(D_FlipFlop_Set_Reset_0_Q1),
        .y(xup_and2_0_y));
  xup_jk_xup_and2_1_0 xup_and2_1
       (.a(J1_1),
        .b(D_FlipFlop_Set_Reset_0_Q1_n),
        .y(xup_and2_1_y));
  xup_jk_xup_and2_2_0 xup_and2_2
       (.a(xup_inv_1_y),
        .b(D_FlipFlop_Set_Reset_0_Q2),
        .y(xup_and2_2_y));
  xup_jk_xup_and2_3_0 xup_and2_3
       (.a(J2_1),
        .b(D_FlipFlop_Set_Reset_0_Q2_n),
        .y(xup_and2_3_y));
  xup_jk_xup_inv_0_0 xup_inv_0
       (.a(K1_1),
        .y(xup_inv_0_y));
  xup_jk_xup_inv_1_0 xup_inv_1
       (.a(K2_1),
        .y(xup_inv_1_y));
  xup_jk_xup_or2_0_0 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
  xup_jk_xup_or2_1_0 xup_or2_1
       (.a(xup_and2_2_y),
        .b(xup_and2_3_y),
        .y(xup_or2_1_y));
endmodule
