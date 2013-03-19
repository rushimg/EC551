`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:33 11/13/2012 
// Design Name: 
// Module Name:    clk_divide 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module clk25(clk_100Mhz, clk_25Mhz); 
	input clk_100Mhz;	// user clock
	output clk_25Mhz;	// divided clock

	reg [1:0] count=2'b0;	// counter, is bigger then we need in case you wanna play with it

	always @(posedge clk_100Mhz)
	begin
		count <= count + 1'b1;
	end
	
	assign clk_25Mhz = count[1];

endmodule
