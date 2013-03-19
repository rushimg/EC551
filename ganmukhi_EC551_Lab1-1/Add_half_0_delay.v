`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:01 09/20/2012 
// Design Name: 
// Module Name:    Add_half_0_delay 
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
module Add_half_0_delay(sum, c_out, a, b);
	input a, b;
	output c_out, sum;
	xor (sum, a, b);
	and (c_out, a, b);
endmodule
