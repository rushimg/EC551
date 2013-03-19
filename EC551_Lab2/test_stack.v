`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:24 10/05/2012
// Design Name:   stack
// Module Name:   X:/EC551_lab2/test_stack.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stack
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_stack;

	// Inputs
	reg [5:0] stackIn;
	reg readSignal;
	reg writeSignal;
	reg reset;

	// Outputs
	wire [5:0] stackOut;

	// Instantiate the Unit Under Test (UUT)
	stack uut (
		.stackOut(stackOut), 
		.stackIn(stackIn), 
		.readSignal(readSignal), 
		.writeSignal(writeSignal), 
		.reset(reset)
	);

	initial begin
	
		stackIn = 0;
		readSignal = 0;
		writeSignal = 0;
		reset = 0;
		
		#100;
		stackIn = 5'b0001;
		writeSignal = 1;
	
		#100;
		stackIn = 5'b0010;  
	
		#100;
		stackIn = 5'b0011;
		
		#100
		readSignal = 1;
		writeSignal = 0;
		
		#100
		stackIn = 5'b11111; // just to trigger sensitivity list
		
		#100
		readSignal = 0;
		reset = 1;
		
		#100
		readSignal = 1;
		reset = 0;
		// Add stimulus here

	end
      
endmodule

