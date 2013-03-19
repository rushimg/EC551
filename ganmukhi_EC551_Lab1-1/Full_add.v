`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:04 09/20/2012 
// Design Name: 
// Module Name:    Full_add 
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
module Full_add( sum, c_out, a, b, c_in);

	 output sum, c_out;
	
	 input a, b, c_in;
	  
	 wire partial_c_out1, partial_c_out2, partial_sum;
	 
	 Add_half_0_delay M1(partial_sum, partial_c_out1, a, b);
	 
	 Add_half_0_delay M2(sum, partial_c_out2, c_in, partial_sum);
	 
	 or(c_out, partial_c_out1, partial_c_out2);

endmodule
