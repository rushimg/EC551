`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:34:55 09/24/2012
// Design Name:   Full_add
// Module Name:   X:/Ec551_Lab1/t_add_full.v
// Project Name:  Ec551_Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_add_full();

	// Inputs
	wire sum, c_out;
	reg a, b,c_in;
	
	Full_add F2(sum, c_out, a, b, c_in); //UUT

	initial begin
	#10 a = 0; b = 0; c_in =0;
	#10 b = 1;
	#10 c_in = 1;	
	#10 a = 1;
	#10 b = 0;
	#10 c_in = 0;
	#10 a = 0;
	end
      
endmodule

