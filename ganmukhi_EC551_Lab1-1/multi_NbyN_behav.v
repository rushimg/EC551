`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:39:38 09/27/2012 
// Design Name: 
// Module Name:    multi_NbyN_behav 
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
module multi_NbyN_behav(p,m,q);
	parameter N = 4;
	input [(N-1):0] q;
	input [(N-1):0] m;
	output [(2*N-1):0] p;
	
	assign p = q * m;
endmodule
