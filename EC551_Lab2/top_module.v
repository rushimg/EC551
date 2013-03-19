`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:13 10/19/2012 
// Design Name: 
// Module Name:    top_module 
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
module top_module(
   output [5:0]out,
	input[2:0]function_code,
	input clk,read,reset,
	input[2:0]a,b);
	
	wire [2:0] funct;
	wire [5:0] stackIn;
	wire fullSignal,emptySignal;
	
	//TODO: test stack full/empty and reset w/updated Stack
	
   decoder decode1(funct, function_code);
	ALU alu1(stackIn,a,b,funct);
	stack s1(out,fullSignal,emptySignal,stackIn, read, ~read, reset);
endmodule
