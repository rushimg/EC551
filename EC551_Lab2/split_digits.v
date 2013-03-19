`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:26 10/05/2012 
// Design Name: 
// Module Name:    split_digits 
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
module split_digits(
	output	[3:0] d0,d1,
	input		[5:0]	in
   );
	
	reg [3:0] d0, d1;
	
	always @ (in, d0, d1) begin
		d0<=in%10;
		d1<=(in-in%10)/10;
	end

endmodule
