`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:40 11/02/2012 
// Design Name: 
// Module Name:    keyboard 
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
module getScanCode(scan_code, k_data, k_clk);
	output [7:0] scan_code;
	input k_data, k_clk;
	
	reg [10:0] data;
	reg [3:0] cnt = 0;
	reg [7:0] scan_code;
	
	always @ (negedge k_clk) begin
		data <= {data[9:0],k_data};
		if (cnt==11) begin		//Assign new output scan code
			cnt<=0;
			scan_code <= data[8:1];
		end
		else begin
			cnt<=cnt+1;
			scan_code<=0;
		end
	end

endmodule
