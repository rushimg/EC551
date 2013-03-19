`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:22 10/08/2012
// Design Name:   mux4to1
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_mux4to1.v
// Project Name:  EC551_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_mux4to1;

	// Inputs
	reg [3:0] sel;
	reg [3:0] d0;
	reg [3:0] d1;
	reg [3:0] d2;
	reg [3:0] d3;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (
		.out(out), 
		.sel(sel), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3)
	);

	initial begin
		// Initialize Inputs
		sel=4'b0001;
		d0 = 0;
		d1 = 1;
		d2 = 2;
		d3 = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10
		sel=4'b0010;
		#10
		sel=4'b0100;
		#10
		sel=4'b1000;
		#10
		$finish;
	end
      
endmodule

