`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:14 09/27/2012 
// Design Name: 
// Module Name:    multo_4by4_behav 
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
module multi_4by4_behav(p,m,q);
	input [3:0] q;
	input [3:0] m;
	output [7:0] p;
	
	assign p = q * m;
endmodule
