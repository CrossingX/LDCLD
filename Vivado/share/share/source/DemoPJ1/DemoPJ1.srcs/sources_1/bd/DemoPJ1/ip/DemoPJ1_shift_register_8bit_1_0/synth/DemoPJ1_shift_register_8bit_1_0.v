// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:xup:shift_register_8bit:1.0
// IP Revision: 4

(* X_CORE_INFO = "shift_register_8bit,Vivado 2015.3" *)
(* CHECK_LICENSE_TYPE = "DemoPJ1_shift_register_8bit_1_0,shift_register_8bit,{}" *)
(* CORE_GENERATION_INFO = "DemoPJ1_shift_register_8bit_1_0,shift_register_8bit,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=xup,x_ipName=shift_register_8bit,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module DemoPJ1_shift_register_8bit_1_0 (
  DSA,
  DSB,
  CP,
  MR_n,
  Q7,
  Q6,
  Q5,
  Q4,
  Q3,
  Q2,
  Q1,
  Q0
);

input wire DSA;
input wire DSB;
input wire CP;
input wire MR_n;
output wire Q7;
output wire Q6;
output wire Q5;
output wire Q4;
output wire Q3;
output wire Q2;
output wire Q1;
output wire Q0;

  shift_register_8bit inst (
    .DSA(DSA),
    .DSB(DSB),
    .CP(CP),
    .MR_n(MR_n),
    .Q7(Q7),
    .Q6(Q6),
    .Q5(Q5),
    .Q4(Q4),
    .Q3(Q3),
    .Q2(Q2),
    .Q1(Q1),
    .Q0(Q0)
  );
endmodule
