`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:36 10/07/2012 
// Design Name: 
// Module Name:    clock_divide 
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
module clock_divide(
	output clk_100hz,
	input clk_100mhz
    );
	 
	 reg clk_100hz = 0;
	 reg [25:0] count = 0;
	
	/*
	initial begin
		clk_100hz<=0;
		count<=0;
	end
	*/
	
	always @ (posedge clk_100mhz) begin
		if (count >= 500_000)
			count <= 0;
		else
			count <= count+1;
		clk_100hz <= count>=250_000?1:0;
	end

endmodule
