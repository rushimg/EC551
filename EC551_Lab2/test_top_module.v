`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:22:46 10/19/2012
// Design Name:   top_module
// Module Name:   C:/Users/Medha/Desktop/EC551_Lab2/test_top_module.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top_module;

	// Inputs
	reg [2:0] function_code;
	reg clk;
	reg [2:0] a;
	reg [2:0] b;
	reg read;
	reg reset;
	// Outputs
	wire [5:0] out;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.out(out), 
		.function_code(function_code), 
		.clk(clk),
		.read(read),
		.reset(reset),
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		function_code = 0;
		a = 0;
		b = 0;
		read =0;
		reset=0;
		#100
		// Wait 100 ns for global reset to finish
		//Test addition
      function_code = 3'b011;
		a=1;
		b=2;
		read = 0;
		#100
		//read out addition value
		read=1;
		#100
		//new add value 1
		function_code = 3'b011;
		a=1;
		b=1;
		read = 0;
		#100
		//new add value 2
		function_code = 3'b011;
		a=2;
		b=4;
		read = 0;
		#100
		//new add value 2
		function_code = 3'b011;
		a=3;
		b=7;
		read = 0;
		#100
		//read out value 3
		read = 1;
		#100
		//test reset
		read=0;
		reset=1;
		#100
		read =1; 
		$finish;
	end
endmodule

