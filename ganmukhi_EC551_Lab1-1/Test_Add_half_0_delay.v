`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:38 09/20/2012
// Design Name:   Add_half_0_delay
// Module Name:   X:/Ec551_Lab1/Test_Add_half_0_delay.v
// Project Name:  Ec551_Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Add_half_0_delay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_Add_half();

	// Inputs
	wire sum, c_out;
	reg a, b;
	
	Add_half_0_delay M1(sum, c_out, a, b); //UUT
	
	initial begin
	#10 a = 0; b = 0;
	#10 b = 1;
	#10 a = 1;
	#10 b = 0;
	
	end
      
endmodule

