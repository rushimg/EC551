`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:09 10/08/2012
// Design Name:   split_digits
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_split_digits.v
// Project Name:  EC551_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: split_digits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_split_digits;

	// Inputs
	reg [5:0] in;

	// Outputs
	wire [3:0] d0;
	wire [3:0] d1;

	// Instantiate the Unit Under Test (UUT)
	split_digits uut (
		.d0(d0), 
		.d1(d1), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10
		in=16;
		#10
		in=23;
		#10
		$finish;
		
	end
      
endmodule

