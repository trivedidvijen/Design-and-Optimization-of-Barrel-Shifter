`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:46 03/27/2017 
// Design Name: 
// Module Name:    mux4x1 
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
module mux4x1(
	 input [3:0]data,
	 input [1:0]sel,
	 output reg out
    );
	 
	 always@(*)
	 begin
	 case (sel)
	 2'b00: out = data[0];

    2'b01: out = data[1];

    2'b10: out = data[2];

    2'b11: out = data[3];
	 endcase
	 end
endmodule
