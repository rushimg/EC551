`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:01 03/07/2011 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(clk, b0,out);
input clk, b0;
output out;

reg b0low,b0high,b0state;
//17 originally
reg [20:0] count; //Counter variable increase bit length to increase delay

//determines moment b0 goes high
always @(posedge clk) begin
	b0low<=~b0;
	b0high<=b0low;
end

wire b0idle = (b0state==b0high); //when nothing is pressed b0idle is high
wire max = &count; //when count reaches 111111... max is high

//each clk cycle it checks the state of b0idle and counts if it's low
always @(posedge clk) begin
	if(b0idle)
		 count <= 0;
	else begin
		 count <= count + 1;
		 if(max)
			b0state <= ~b0state; //updates state when maxed out
	end
end

wire out   =  b0state & ~b0idle & max;  // true the moment max goes high

endmodule
