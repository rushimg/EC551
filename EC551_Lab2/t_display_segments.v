`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:44 10/08/2012
// Design Name:   display_segments
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_display_segments.v
// Project Name:  EC551_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display_segments
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_display_segments;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] anode;

	// Instantiate the Unit Under Test (UUT)
	display_segments uut (
		.anode(anode),
		.clk(clk)
	);
	
	always
		#5 clk = ~clk;
		
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 $finish;
	end
      
endmodule

