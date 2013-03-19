`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:01 10/07/2012 
// Design Name: 
// Module Name:    Seven_Segment 
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
module Seven_Segment(
	output	[3:0] anode,
	output	[7:0] sevseg,
	input		[5:0] num,
	input		clk
   );
	
	
	//Clock divider for seven segment display
	clock_divide clk_div(.clk_100hz(clk_100),.clk_100mhz(clk));
	
	
	//Shift selected segments
	wire [3:0] anode;
	shift_anode disp(.anode(anode),.clk(clk_100));
	
	//Convert LIFO output to BCD
	wire [3:0] d0_bcd, d1_bcd;
	split_digits split(.d0(d0_bcd),.d1(d1_bcd),.in(num));
	
	//Multiplex digits
	wire [3:0] digit;
	//mux4to1 mux(.out(digit),.sel(anode), .d0(d0_bcd), .d1(d1_bcd), .d2(0), .d3(0));
	mux4to1 mux(.out(digit),.sel(anode), .d0(0), .d1(1), .d2(2), .d3(3));
	
	//Convert to seven segment display format
	BCDtoSevSeg toDisp(.disp(sevseg),.bcd(digit));

endmodule
