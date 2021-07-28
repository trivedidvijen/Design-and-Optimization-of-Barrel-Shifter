`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:25 03/19/2017 
// Design Name: 
// Module Name:    andgate 
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
module andgate(
	 input wire and_ip1,
	 input wire and_ip2,
	 output reg and_op
    );
and_op = and_ip1 and and_ip2;


endmodule
