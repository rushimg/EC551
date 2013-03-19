`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:28 11/15/2012
// Design Name:   img_mem
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/ec551_lab3/t_img_mem.v
// Project Name:  ec551_lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: img_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_img_mem;

	// Inputs
	reg clka;
	reg [14:0] addra;

	// Outputs
	wire [7:0] douta;

	// Instantiate the Unit Under Test (UUT)
	img_mem uut (
		.clka(clka), 
		.addra(addra), 
		.douta(douta)
	);
	
	always #2 clka=~clka;
	
	integer i;
	
	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 0;

		// Wait 100 ns for global reset to finish
		#101;
        
		// Add stimulus here
		for(i=0;i<27000;i=i+1) begin
			#4 addra = i;
		end
		$finish;
	end
      
endmodule

