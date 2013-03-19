`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:09 10/08/2012
// Design Name:   BCDtoSevSeg
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_BCDtoSevSeg.v
// Project Name:  EC551_Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDtoSevSeg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_BCDtoSevSeg;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [7:0] disp;

	// Instantiate the Unit Under Test (UUT)
	BCDtoSevSeg uut (
		.disp(disp), 
		.bcd(bcd)
	);

	initial begin
		// Initialize Inputs
		bcd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10
		bcd=1;
		#10
		bcd=2;
		#10
		bcd=3;
		#10
		$finish;
	end
      
endmodule

