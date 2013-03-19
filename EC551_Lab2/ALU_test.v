`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:22 10/05/2012
// Design Name:   ALU
// Module Name:   X:/Xilinx/EC551_lab2/ALU_test.v
// Project Name:  EC551_lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [2:0] ALUOp;
	reg [2:0] a;
	reg [2:0] b;

	// Outputs
	wire [5:0] f;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.f(f), 
		.ALUOp(ALUOp), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100
		//Test addition
      ALUOp = 3'b001;
		a=1;
		b=2;
		#20
		a=7;
		b=1;
		//Test subtract
		#10
		ALUOp = 3'b010;
		#10
		a=3;
		b=6;
		//Test multiplication
		#10
		ALUOp = 3'b011;
		//Test right shift
		#10
		ALUOp = 3'b100;
		a=3'b100;
		b=2;
		//Test left shift
		#10
		ALUOp=3'b101;
		a=3'b001;
		//Logical XNOR
		#10
		ALUOp=3'b110;
		a=3'b111;
		b=3'b101;
		//Set on equal
		#10
		ALUOp=3'b111;
		a=3;
		b=3;
		#10
		a=0;
		#10
		$finish;
	end
endmodule

