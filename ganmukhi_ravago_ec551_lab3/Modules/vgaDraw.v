`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:24 11/14/2012 
// Design Name: 
// Module Name:    vgaDraw 
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
module vgaDraw(r,g,b,hs,vs,btn,clk_25Mhz);
	//Declare outputs
	output reg [2:0] r,g;
	output reg [1:0] b;
	output hs,vs;
	
	//Declare inputs
	input [3:0] btn;
	input clk_25Mhz;
	
	//Declare wires
	wire [10:0] hcount, vcount;
	wire [7:0] mem_out;
	wire blank;
	
	//Declare registers
	reg [10:0] hstart = 245;
	reg [10:0] vstart = 150;
	reg [14:0] addr;
	reg en_vid;
	
	//Instantiate VGA timing generator
	vga_controller_640_60 vgaTiming(.pixel_clk(clk_25Mhz),.HS(hs),.VS(vs),.hcounter(hcount),.vcounter(vcount),.blank());
	
	//Instantiate block RAM containing image
	img_mem color_test(.clka(clk_25Mhz), .addra(addr), .douta(mem_out));
	
	//Poll buttons
	always @(posedge clk_25Mhz) begin
		if(btn[0]) begin //up
		//if(key==83) begin //up
			hstart<=245;
			vstart<=40;
		end
		else if(btn[1]) begin //down
		//else if(key==84) begin //down
			hstart<=245;
			vstart<=260;
		end
		else if(btn[2]) begin //left
		//else if(key==79) begin //left
			hstart<=110;
			vstart<=150;
		end
		else if(btn[3]) begin //right
		//else if(key==89) begin //right
			hstart<=380;
			vstart<=150;
		end
		else begin
			hstart<=hstart;
			vstart<=vstart;
		end
	end
	
	//Check if counters are in range and set memory address
	always @ (posedge clk_25Mhz) begin
		if(hstart<hcount&&(hstart+150)>hcount&&vstart<vcount&&(vstart+180)>vcount) begin	//counters within range
				addr<=addr+1;	//increment
				en_vid<=1;
		end
		else begin
			if(hcount==(hstart+150)&&vcount==(vstart+180)) begin		//When the counters surpass the image
				addr<=0;	//reset address to 1
			end
			else addr<=addr;
			en_vid<=0;
		end
	end
	
	//Check to see if the counters are in the display range
	always @ (*) begin
		{r,g,b} = en_vid ? mem_out:8'b0;
	end
	
endmodule
