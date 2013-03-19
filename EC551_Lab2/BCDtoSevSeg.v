`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:19 10/05/2012 
// Design Name: 
// Module Name:    BCDtoSevSeg 
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
module BCDtoSevSeg(
	output [7:0] disp,
	input [3:0] bcd
	);
	
	reg [7:0] disp;
	
	always @ (bcd) begin
		case(bcd)
			//Common anode seven segment display with decimal point as MSB
			0: disp<='b10000001;
			1: disp<='b11001111;
			2: disp<='b10010010;
			3: disp<='b10000110;
			4: disp<='b11001100;
			5: disp<='b10100100;
			6: disp<='b10100000;
			7: disp<='b10001111;
			8: disp<='b10000000;
			9: disp<='b10000100;
			10: disp<='b10001000;
			11: disp<='b11100000;
			12: disp<='b10110001;
			13: disp<='b11000010;
			14: disp<='b10110000;
			15: disp<='b10111000;
			default: disp<='b11111111;
		endcase
	end
endmodule
