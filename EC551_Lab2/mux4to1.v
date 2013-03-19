`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:22 10/08/2012 
// Design Name: 
// Module Name:    mux4to1 
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
module mux4to1(
	output [3:0] out,
	input [3:0] sel, d0, d1, d2, d3
   );

	reg [3:0] out;

	always @ (sel, d0, d1, d2, d3) begin
		case(sel)
			4'b0001: out<=d0;
			4'b0010: out<=d1;
			4'b0100: out=d2;
			4'b1000: out<=d3;
			default: out<=0;
		endcase
	end

endmodule
