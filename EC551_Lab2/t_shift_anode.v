`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:42 10/12/2012
// Design Name:   shift_anode
// Module Name:   X:/Xilinx/EC551_lab2/t_shift_anode.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_anode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_shift_anode;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] anode;

	// Instantiate the Unit Under Test (UUT)
	shift_anode uut (
		.anode(anode), 
		.clk(clk)
	);
	
	always
		#10 clk=~clk;
		
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      
endmodule

