`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:02 03/19/2017 
// Design Name: 
// Module Name:    rrot_8 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:52 03/14/2017 
// Design Name: 
// Module Name:    rshift_4 
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
module mux2x1(
	input wire in0,
	input wire in1,
	input wire sel,
	output reg m_out
    );
always@(*) begin
	if(sel)
		m_out = in1;
	else
		m_out = in0;
end

endmodule

module rrot_8(
	input wire [7:0]data,
	input wire [2:0]sel,
	output wire [7:0]out,
	//output reg [3:0]rshift_4_out,
	wire y0,y1,y2,y3,y4,y5,y6,y7,
	wire z0,z1,z2,z3,z4,z5,z6,z7
	//wire zero = 0
    );
	
	mux2x1 m00(.in0(data[0]),.in1(data[1]),.sel(sel[0]),.m_out(y0));
	mux2x1 m01(.in0(data[1]),.in1(data[2]),.sel(sel[0]),.m_out(y1));
	mux2x1 m02(.in0(data[2]),.in1(data[3]),.sel(sel[0]),.m_out(y2));
	mux2x1 m03(.in0(data[3]),.in1(data[4]),.sel(sel[0]),.m_out(y3));
	mux2x1 m04(.in0(data[4]),.in1(data[5]),.sel(sel[0]),.m_out(y4));
	mux2x1 m05(.in0(data[5]),.in1(data[6]),.sel(sel[0]),.m_out(y5));
	mux2x1 m06(.in0(data[6]),.in1(data[7]),.sel(sel[0]),.m_out(y6));
	mux2x1 m07(.in0(data[7]),.in1(data[0]),.sel(sel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(z0));
	mux2x1 m11(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(z1));
	mux2x1 m12(.in0(y2),.in1(y4),.sel(sel[1]),.m_out(z2));
	mux2x1 m13(.in0(y3),.in1(y5),.sel(sel[1]),.m_out(z3));
	mux2x1 m14(.in0(y4),.in1(y6),.sel(sel[1]),.m_out(z4));
	mux2x1 m15(.in0(y5),.in1(y7),.sel(sel[1]),.m_out(z5));
	mux2x1 m16(.in0(y6),.in1(y0),.sel(sel[1]),.m_out(z6));
	mux2x1 m17(.in0(y7),.in1(y1),.sel(sel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(z0),.in1(z4),.sel(sel[2]),.m_out(out[0]));
	mux2x1 m21(.in0(z1),.in1(z5),.sel(sel[2]),.m_out(out[1]));
	mux2x1 m22(.in0(z2),.in1(z6),.sel(sel[2]),.m_out(out[2]));
	mux2x1 m23(.in0(z3),.in1(z7),.sel(sel[2]),.m_out(out[3]));
	mux2x1 m24(.in0(z4),.in1(z0),.sel(sel[2]),.m_out(out[4]));
	mux2x1 m25(.in0(z5),.in1(z1),.sel(sel[2]),.m_out(out[5]));
	mux2x1 m26(.in0(z6),.in1(z2),.sel(sel[2]),.m_out(out[6]));
	mux2x1 m27(.in0(z7),.in1(z3),.sel(sel[2]),.m_out(out[7]));

endmodule

