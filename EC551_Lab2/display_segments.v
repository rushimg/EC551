`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:39 10/07/2012 
// Design Name: 
// Module Name:    display_segments 
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
module shift_anode(
	output [3:0] anode,
	input clk
    );
	
	reg [3:0] anode = 1;
	
	//initial anode = 1;
	
	always @ (posedge clk) begin
		//On each clock edge change sevseg outputs and shift anode
		if(anode==4'b1000)
			anode <= 4'b0001;
		else anode=anode<<1;
	end
	
endmodule
