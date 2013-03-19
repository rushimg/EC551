`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:43:44 09/27/2012
// Design Name:   multi_4by4_behav
// Module Name:   X:/Ec551_Lab1/test_multi_NbyN_behav.v
// Project Name:  Ec551_Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_4by4_behav
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multi_NbyN_behav;

	// Inputs
	reg [7:0] m;
	reg [7:0] q;

	// Outputs
	wire [15:0] p;

	// Instantiate the Unit Under Test (UUT)
	multi_NbyN_behav #(8) uut (
		.p(p), 
		.m(m), 
		.q(q)
	);

	initial begin
		m = 8'b00000000;
		q = 8'b00000000;
		
		#100;
		m = 8'b00000001;
		q = 8'b00000000;
		
		#100;
		m = 8'b00000011;
		q = 8'b00000010;
		
		#100;
		m = 8'b00001000;
		q = 8'b00000100;
		
		#100;
		m = 8'b00001000;
		q = 8'b00010000;
	end
      
endmodule

