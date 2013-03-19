`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:23 11/03/2012
// Design Name:   state_machine
// Module Name:   C:/Users/Medha/Desktop/EC551_Lab2/test_state_machine.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: state_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_state_machine;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	state_machine uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.out(out)
	);
	
	always
		#10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 1;
		b = 0;
		
		#100
		a = 1;
		b = 0;
		
		#100
		a = 1;
		b = 1;
		
		
		#100
		a = 1;
		b = 1;
		
		#100
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

