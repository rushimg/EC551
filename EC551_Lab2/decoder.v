`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:26 10/05/2012 
// Design Name: 
// Module Name:    decoder 
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
module decoder(decoderOut, decoderIn);
	output [2:0] decoderOut;
	input [2:0] decoderIn;
	reg [2:0] decoderOut;
	always @(decoderIn)
		begin
			case(decoderIn)
				3'b011 : decoderOut = 3'b001;
				3'b010 : decoderOut = 3'b010;
				3'b001 : decoderOut = 3'b011;
				3'b110 : decoderOut = 3'b100;
				3'b101 : decoderOut = 3'b101;
				3'b111 : decoderOut = 3'b110;
				3'b100 : decoderOut = 3'b111;
				default : decoderOut = 3'b000;
			endcase	
		end

endmodule
