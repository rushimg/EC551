`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:11 10/05/2012 
// Design Name: 
// Module Name:    stack 
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
module stack(stackOut, fullSignal, emptySignal,stackIn, readSignal, writeSignal, reset);
	output [5:0] stackOut;
	output fullSignal, emptySignal;
	input [5:0] stackIn; //connected to ALU out
	input readSignal, writeSignal, reset;
	reg [5:0] stackOut;
	reg [1:0] fullSignal, emptySignal;
	reg [5:0] register0; //top of stack
	reg [5:0] register1;
	reg [5:0] register2;
	reg [5:0] register3;
	reg [5:0] register4;
	reg [5:0] register5; //bottom of stack
	
	always@(stackIn, readSignal, writeSignal, reset)
	begin
   if (readSignal)
	begin
		//push
		stackOut <= register5; // grab from bottom of stack
		register5 <= register4; //push to bottom of stack
		register4 <= register3;
		register3 <= register2;
		register2 <= register1;
		register1 <= register0;
		register0 <= 5'b00000;
	end	
	else if (writeSignal)
	begin
		//pop
		register5 <= stackIn; // grab from bottom of stack
		register4 <= register5; //push to bottom of stack
		register3 <= register4;
		register2 <= register3;
		register1 <= register2;
		register0 <= register1;
	end
	else if (reset)
	begin	
		//clear
		register5 <= 5'b00000;
		register4 <= 5'b00000;
		register3 <= 5'b00000;
		register2 <= 5'b00000;
		register1 <= 5'b00000;
		register0 <= 5'b00000;
	end
	if(register0 != 5'b00000)
		fullSignal = 1;
	else
		fullSignal = 0;
	if	(register5 == 5'b00000)
		emptySignal = 1;
	else
		emptySignal = 0;
	end
endmodule
