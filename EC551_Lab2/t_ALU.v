`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:38:21 10/05/2012
// Design Name:   ALU
// Module Name:   D:/Documents/Dropbox/Code/Xilinx/EC551_Lab2/t_ALU.v
// Project Name:  EC551_Lab2
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

module t_ALU;

	// Inputs
	reg [2:0] a;
	reg [2:0] b;
	reg [2:0] op;

	// Outputs
	wire [5:0] f;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.f(f), 
		.a(a), 
		.b(b), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		a = 3'b010;
		b = 3'b011;
		op = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//Test Addition 2+3=5
		#10
		//Test Subtraction 2-3=-1
		#10
		op=2;
		#10
		a=1;
		b=3;
		
		//Test Multiplication 2*3=6
		#10
		op=3;
		//Test arithmetic right shift 3'b010>>1=3'b001
		#10
		op=3'b100;
		a=3'b100;
		b=1;
		//Test left shift
		#10
		op=3'b101;
		a=3'b010;
		//Test XNOR
		#10
		op=3'b110;
		#10
		b=2;
		//Test set on less than
		#100
		op=3'b111;
		a=3;
		b=3;
		#10
		a=1;
		#10
		$finish;
	end
      
endmodule

