`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:08 09/25/2012 
// Design Name: 
// Module Name:    multi_4by4_struct 
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
module multi_4by4_struct(p,m,q);
	input [3:0] q;
	input [3:0] m;
	output [7:0] p;
	
	wire c_out1, c_out2, c_out3, c_out4, c_out5, c_out6, c_out7, c_out8, c_out9, c_out10, c_out11;
	wire p_out1, p_out2, p_out3, p_out4, p_out5, p_out6, p_out7, p_out8, p_out9;
	wire diag_1, diag_2, diag_3, diag_4, diag_5, diag_6, diag_7, diag_8,diag_9, diag_10, diag_11, diag_12;
	wire q_prop1, q_prop2, q_prop3, q_prop4, q_prop5, q_prop6, q_prop7, q_prop8;
	wire q1_out1, q1_out2, q1_out3, q1_out4, q0out1, q0out2, q0out3, q0out4;
	
	and (p[0], m[0], q[0]);
	
	//first row
	multi_5b B11(c_out1, p[1], diag_1, q0out1, q1_out1, m[0], q[0], q[1], 1'b0, m[1]);
		                                  
	multi_5b B12(c_out2, p_out1 , diag_2, q0out2, q1_out2, m[1], q0out1, q1_out1, c_out1, m[2]);
	
	multi_5b B13(c_out3, p_out2 , diag_3, q0out3, q1_out3, m[2], q0out2, q1_out2, c_out2, m[3]);
	
	multi_5b B14(c_out4, p_out3 , diag_4, q0out4, q1_out4, m[3], q0out3, q1_out3, c_out3, 1'b0);
	
	//second row
	multi_5A A21(c_out5, p[2], diag_5, q_prop1, diag_1, q[2], 1'b0, p_out1);

	multi_5A A22(c_out6, p_out4, diag_6, q_prop2, diag_2, q_prop1, c_out5, p_out2);
	
	multi_5A A23(c_out7, p_out5, diag_7, q_prop3, diag_3, q_prop2, c_out6, p_out3);
	
	multi_5A A24(c_out8, p_out6, diag_8, q_prop4, diag_4, q_prop3, c_out7, c_out4);
	
	//thrid row row
	multi_5A A31(c_out9, p[3], diag_9, q_prop5, diag_5, q[3], 1'b0, p_out4);
	
	multi_5A A32(c_out10, p[4], diag_10, q_prop6, diag_6, q_prop5, c_out9, p_out5);
	
	multi_5A A33(c_out11, p[5], diag_11, q_prop7, diag_7, q_prop6, c_out10, p_out6);
	
	multi_5A A34(p[7], p[6], diag_12, q_prop8, diag_5, q_prop7, c_out4, c_out8);

endmodule
