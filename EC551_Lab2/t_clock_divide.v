`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:40 10/09/2012
// Design Name:   clock_divide
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_clock_divide.v
// Project Name:  EC551_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divide
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_clock_divide;
	
	// Inputs
	reg clk_100mhz;

	// Outputs
	wire clk_100hz;

	// Instantiate the Unit Under Test (UUT)
	clock_divide uut (
		.clk_100hz(clk_100hz), 
		.clk_100mhz(clk_100mhz)
	);
	
	always
		#1 clk_100mhz = ~clk_100mhz;
	
	initial begin
		// Initialize Inputs
		clk_100mhz = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

