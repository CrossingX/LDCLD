`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////
// Module Name: xup_and_tb
///////////////////////////////////////////////////////////////

module AndLogic_and_tb;
    
    reg ain;
    reg bin;
    wire y;
    
    
    AndLogic_wrapper DUT(.a(ain), .b(bin), .y(y));
    
 
    initial
    begin
      ain = 0; bin= 0;
      #10 ain= 1; bin= 1;
	  #10 ain= 0; bin= 1;
	  #10 ain= 1; bin= 0;
	  #10 ain= 1; bin= 1;
      #10 ain= 1; bin= 0;
	#20;
    end

endmodule
