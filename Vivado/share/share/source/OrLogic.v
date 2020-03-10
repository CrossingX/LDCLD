`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/12 14:02:39
// Design Name: 
// Module Name: AddLogic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OrLogic(
    input CLK,
    input IN1,
    input IN2,
    output reg OUT1
    );
 always@(posedge CLK)
 OUT1 <= IN1|IN2;
 
endmodule
