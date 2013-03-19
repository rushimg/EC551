`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:32 10/05/2012 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	output	[5:0] f,
	input		[2:0] a,b,
	input		[2:0] op
   );
	
	reg [5:0] f;
	always @ (op,a,b) begin
		case(op)
			3'b001: f = a+b;
			3'b010: f = a-b;
			3'b011: f = a*b;
			3'b100: f = a>>>b;
			3'b101: f = a<<b;
			3'b110: f = (a==b) ? 1 : 0;
			3'b111: f = (a<b) ? 1 : 0;
			default: f = 0;
		endcase
	end
	
endmodule
