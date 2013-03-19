`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:43 09/25/2012
// Design Name:   multi_5b
// Module Name:   X:/Ec551_Lab1/test_multi_5b.v
// Project Name:  Ec551_Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_5b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multi_5b;

	// Inputs
	reg mk;
	reg q0;
	reg q1;
	reg c_in;
	reg mk1;

	// Outputs
	wire c_out;
	wire sum;
	wire mk_out;
	wire q0_out;
	wire q1_out;

	// Instantiate the Unit Under Test (UUT)
	multi_5b uut (
		.c_out(c_out), 
		.sum(sum), 
		.mk_out(mk_out), 
		.q0_out(q0_out), 
		.q1_out(q1_out), 
		.mk(mk), 
		.q0(q0), 
		.q1(q1), 
		.c_in(c_in), 
		.mk1(mk1)
	);

	initial begin
		#10 mk = 0; q0 = 0; q1 = 0; c_in =0; mk1 = 0;
		#10 mk1 = 1;
		#10 q0 = 1;
		#10 q1 = 1;		
		#10 c_in = 1;
		#10 mk = 1;
		#10 mk1 = 0;
		#10 q0 = 0;
		#10 q1 = 0;
		#10 c_in = 0;
		#10 mk = 0;
	end
      
endmodule

