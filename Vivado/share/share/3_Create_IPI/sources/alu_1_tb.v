`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/19 09:34:41
// Design Name: 
// Module Name: alu_tb
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


module alu_1_tb;
//Input
    reg [5:0]IN1;
    reg GND;
  
    
    //output
    wire[1:0] OUT1;
    
    alu_1_wrapper uut(.A(IN1[0]),.B(IN1[1]),.Cn(IN1[2]),.Cn_1(OUT1[1]),.GND(GND),.S0(IN1[3]),.S1(IN1[4]),.S2(IN1[5]),.Y(OUT1[0]));
    
    initial begin
             //Initialize Input
            IN1 = 6'b000000;
            GND = 0;
            
            //waite 100ns for global reset to finish
            #100;
         end
         always begin
            for(IN1=000000;IN1<111111;IN1=IN1+1)
            #100;          
         end
endmodule

