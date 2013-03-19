`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:53:37 10/12/2012
// Design Name:   Seven_Segment
// Module Name:   X:/Xilinx/EC551_lab2/t_sevseg.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Seven_Segment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_sevseg;

	// Inputs
	reg [5:0] num;
	reg clk;

	// Outputs
	wire [3:0] anode;
	wire [7:0] sevseg;

	// Instantiate the Unit Under Test (UUT)
	Seven_Segment uut (
		.anode(anode), 
		.sevseg(sevseg), 
		.num(num), 
		.clk(clk)
	);
	
	always
		#10 clk=~clk;
	initial begin
		// Initialize Inputs
		num = 12;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#1000000;
	end
      
endmodule

