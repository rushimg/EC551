`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:38 11/14/2012 
// Design Name: 
// Module Name:    lab3_top 
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
module lab3_top(r,g,b,hs,vs,btn,clk);
	//Declare outputs
	output [2:0] r,g;
	output [1:0] b;
	output hs,vs;
	
	//Declare inputs
	input [3:0] btn;
	input clk;
	//input k_clk, k_data;
	
	//Declare wires
	wire clk_25Mhz;
	wire [3:0] dbtn;
	//wire [7:0] key;
	
	//Instantiate modules
	clk25 clk25(.clk_100Mhz(clk), .clk_25Mhz(clk_25Mhz));
	vgaDraw vga(.r(r), .g(g), .b(b), .hs(hs), .vs(vs), .btn(dbtn), .clk_25Mhz(clk_25Mhz));
	
	//Debouncers
	//Use pushbutton inputs in place of keyboard module
	//Up=0, down=1, left=2, right=3
	debouncer	deb0(.clk(clk_25Mhz), .b0(btn[0]), .out(dbtn[0]));
	debouncer	deb1(.clk(clk_25Mhz), .b0(btn[1]), .out(dbtn[1]));
	debouncer	deb2(.clk(clk_25Mhz), .b0(btn[2]), .out(dbtn[2]));
	debouncer	deb3(.clk(clk_25Mhz), .b0(btn[3]), .out(dbtn[3]));
	
	//Intstatiate keyboard module
	//getScanCode keyboard(.scan_code(key), .k_data(k_data), .k_clk(k_clk));

endmodule
