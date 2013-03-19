`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:50 09/25/2012 
// Design Name: 
// Module Name:    multi_5A 
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
module multi_5A(c_out, sum, mk_out, qj_out, mk, qj, c_in, ppi);
	output mk_out, qj_out, sum, c_out;
	input qj, mk, c_in, ppi;
	wire or_out;
	
	and (or_out, qj, mk);
	and (mk_out, mk, mk);
	and (qj_out, qj, qj);
	
	Full_add F1(sum, c_out, or_out, ppi, c_in);

endmodule
