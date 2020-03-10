`timescale 1ns/1ps
module Demo7Seg_tb;
//input
    reg CLK;
    reg GND;
    reg DP;
    wire BI_RBO;
    
//output
    wire AN;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
   

 //instantiate
 Demo_7Seg_wrapper uut(.AN0(AN),.BI_RBO(BI_RBO),.DP(DP),.GND(GND),.a(a),.b(b),.c(c),.clk_in(CLK),.d(d),.e(e),.f(f),.g(g));

 //initialize input
 initial begin
 CLK = 1;
 GND = 0;
 DP = 1;
 #100;
 end
 //
 parameter period = 10;//clock period
 always begin
   #(period/2)CLK <= ~CLK;
   
 end
 
 endmodule
 