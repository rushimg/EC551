`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:14 09/25/2012
// Design Name:   multi_5A
// Module Name:   X:/Ec551_Lab1/test_multi_5A.v
// Project Name:  Ec551_Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_5A
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multi_5A();

	// Inputs
	reg mk;
	reg qj;
	reg c_in;
	reg ppi;

	// Outputs
	wire c_out;
	wire sum;
	wire mk_out;
	wire qj_out;

	// Instantiate the Unit Under Test (UUT)
	multi_5A uut (
		.c_out(c_out), 
		.sum(sum), 
		.mk_out(mk_out), 
		.qj_out(qj_out), 
		.mk(mk), 
		.qj(qj), 
		.c_in(c_in), 
		.ppi(ppi)
	);

	initial begin
		
		#10 mk = 0; qj = 0; c_in =0; ppi = 0;
		#10 ppi = 1;
		#10 qj = 1;	
		#10 c_in = 1;
		#10 mk = 1;
		#10 ppi = 0;
		#10 qj = 0;
		#10 c_in = 0;
		#10 mk = 0;
	end
      
endmodule

