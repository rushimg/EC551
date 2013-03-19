`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:05 09/25/2012 
// Design Name: 
// Module Name:    multi_5b 
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
module multi_5b(c_out, sum, mk_out, q0_out, q1_out, mk, q0, q1, c_in, mk1);
	output mk_out, q0_out, q1_out, sum, c_out;
	input q0, q1, mk, mk1, c_in;
	wire or_out, or_out2;
	
	and (or_out, q1, mk);
	and (or_out2, q0, mk1);
	
	and (mk_out, mk, mk);
	and (q0_out, q0, q0);
	and (q1_out, q1, q1);
	
	Full_add F1(sum, c_out, or_out, or_out2, c_in);

endmodule
