`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:58 11/03/2012 
// Design Name: 
// Module Name:    state_machine 
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
module state_machine(clk, reset, a, b, out);
	input clk, reset, a, b;
	output out;
	
	reg [1:0] ps = 2'b00;
	reg [1:0] ns;
	reg out;
	
	always @(posedge clk)
		ps <= ns;
		
	always @(a,b,reset) begin
		if(reset) 
			ns =0;
		else begin
			ns[1]= ~b & ~ps[1] & ~ps[0] | a & ~ps[1]& ps[0] | ps[1] & ~ps[0];
			out = ~ps[0] & ps[1] | ~ps[1] & ps[0];
			ns[0] = ~a & b & ~ps[1] & ~ps[0] | ~a & ~ps[1] & ps[0] | ps[1] & 
			~ps[0] | ~b & ps[1] & ps[0];
		end
	end

endmodule
