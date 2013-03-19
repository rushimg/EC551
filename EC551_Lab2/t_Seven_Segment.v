`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:14:21 10/08/2012
// Design Name:   Seven_Segment
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_Seven_Segment.v
// Project Name:  EC551_Lab2
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

module t_Seven_Segment;

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
		#5 clk=~clk;
		
	initial begin
		// Initialize Inputs
		num = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50
		num = 15;
		#50
		num = 32;
		#50
		num = 60;
		#50
		num = 3;
		#50
		$finish;
		
	end
      
endmodule

