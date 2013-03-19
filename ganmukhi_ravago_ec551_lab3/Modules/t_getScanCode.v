`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:48:07 11/02/2012
// Design Name:   getScanCode
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/lab3/t_getScanCode.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: getScanCode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_getScanCode;

	// Inputs
	reg k_data;
	reg k_clk;

	// Outputs
	wire [7:0] scan_code;
	wire [10:0] out;

	// Instantiate the Unit Under Test (UUT)
	getScanCode uut (
		.out(out),
		.scan_code(scan_code), 
		.k_data(k_data), 
		.k_clk(k_clk)
	);
	
	integer i=0;
	
	initial begin
		#100
		for (i=0; i<1000; i=i+1)
			#5 k_clk=~k_clk;
	end
	
	initial begin
		// Initialize Inputs
		k_data = 0;
		k_clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		#3 k_data = 1;
		#10 k_data = 1;
		#10 k_data = 0;
		#10 k_data = 0;
		#10 k_data = 1;
		#10 k_data = 0;
		#10 k_data = 1;
		#10 k_data = 0;
		#10 k_data = 0;
		#10 k_data = 1;
		#10 k_data = 0;
		#10 k_data = 0;
		#10 k_data = 1;
		#10 k_data = 0;
	end
      
endmodule

