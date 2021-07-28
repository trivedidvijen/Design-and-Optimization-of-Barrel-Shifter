`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:06 03/26/2017 
// Design Name: 
// Module Name:    onescplbidir_rot_8 
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
	input wire [7:0]rrdata,
	input wire [2:0]rrsel,
	output wire [7:0]rrout,
	//output reg [3:0]rshift_4_out,
	wire y0,y1,y2,y3,y4,y5,y6,y7,
	wire z0,z1,z2,z3,z4,z5,z6,z7
	//wire zero = 0
    );
	
	mux2x1 m00(.in0(rrdata[0]),.in1(rrdata[1]),.sel(rrsel[0]),.m_out(y0));
	mux2x1 m01(.in0(rrdata[1]),.in1(rrdata[2]),.sel(rrsel[0]),.m_out(y1));
	mux2x1 m02(.in0(rrdata[2]),.in1(rrdata[3]),.sel(rrsel[0]),.m_out(y2));
	mux2x1 m03(.in0(rrdata[3]),.in1(rrdata[4]),.sel(rrsel[0]),.m_out(y3));
	mux2x1 m04(.in0(rrdata[4]),.in1(rrdata[5]),.sel(rrsel[0]),.m_out(y4));
	mux2x1 m05(.in0(rrdata[5]),.in1(rrdata[6]),.sel(rrsel[0]),.m_out(y5));
	mux2x1 m06(.in0(rrdata[6]),.in1(rrdata[7]),.sel(rrsel[0]),.m_out(y6));
	mux2x1 m07(.in0(rrdata[7]),.in1(rrdata[0]),.sel(rrsel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(y0),.in1(y2),.sel(rrsel[1]),.m_out(z0));
	mux2x1 m11(.in0(y1),.in1(y3),.sel(rrsel[1]),.m_out(z1));
	mux2x1 m12(.in0(y2),.in1(y4),.sel(rrsel[1]),.m_out(z2));
	mux2x1 m13(.in0(y3),.in1(y5),.sel(rrsel[1]),.m_out(z3));
	mux2x1 m14(.in0(y4),.in1(y6),.sel(rrsel[1]),.m_out(z4));
	mux2x1 m15(.in0(y5),.in1(y7),.sel(rrsel[1]),.m_out(z5));
	mux2x1 m16(.in0(y6),.in1(y0),.sel(rrsel[1]),.m_out(z6));
	mux2x1 m17(.in0(y7),.in1(y1),.sel(rrsel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(z0),.in1(z4),.sel(rrsel[2]),.m_out(rrout[0]));
	mux2x1 m21(.in0(z1),.in1(z5),.sel(rrsel[2]),.m_out(rrout[1]));
	mux2x1 m22(.in0(z2),.in1(z6),.sel(rrsel[2]),.m_out(rrout[2]));
	mux2x1 m23(.in0(z3),.in1(z7),.sel(rrsel[2]),.m_out(rrout[3]));
	mux2x1 m24(.in0(z4),.in1(z0),.sel(rrsel[2]),.m_out(rrout[4]));
	mux2x1 m25(.in0(z5),.in1(z1),.sel(rrsel[2]),.m_out(rrout[5]));
	mux2x1 m26(.in0(z6),.in1(z2),.sel(rrsel[2]),.m_out(rrout[6]));
	mux2x1 m27(.in0(z7),.in1(z3),.sel(rrsel[2]),.m_out(rrout[7]));

endmodule

module rr_1(
	 input [7:0]rr_1_data,
	 input rr_1_sel,
	 output [7:0]rr_1_out
	 );
	 mux2x1 rr_1_0(.in0(rr_1_data[0]),.in1(rr_1_data[1]),.sel(rr_1_sel),.m_out(rr_1_out[0]));
	 mux2x1 rr_1_1(.in0(rr_1_data[1]),.in1(rr_1_data[2]),.sel(rr_1_sel),.m_out(rr_1_out[1]));
	 mux2x1 rr_1_2(.in0(rr_1_data[2]),.in1(rr_1_data[3]),.sel(rr_1_sel),.m_out(rr_1_out[2]));
	 mux2x1 rr_1_3(.in0(rr_1_data[3]),.in1(rr_1_data[4]),.sel(rr_1_sel),.m_out(rr_1_out[3]));
	 mux2x1 rr_1_4(.in0(rr_1_data[4]),.in1(rr_1_data[5]),.sel(rr_1_sel),.m_out(rr_1_out[4]));
	 mux2x1 rr_1_5(.in0(rr_1_data[5]),.in1(rr_1_data[6]),.sel(rr_1_sel),.m_out(rr_1_out[5]));
	 mux2x1 rr_1_6(.in0(rr_1_data[6]),.in1(rr_1_data[7]),.sel(rr_1_sel),.m_out(rr_1_out[6]));
	 mux2x1 rr_1_7(.in0(rr_1_data[7]),.in1(rr_1_data[0]),.sel(rr_1_sel),.m_out(rr_1_out[7]));
	 
endmodule


module onescplbidir_rot_8(
	 input [7:0]data,
	 input [2:0]sel,
	 input left,
	 output [7:0]out,
	 wire [7:0]e,
	 wire [2:0]select
	 
    );
	 
	 xor x0(select[0],left,sel[0]);
	 xor x1(select[1],left,sel[1]);
	 xor x2(select[2],left,sel[2]);
	 
	 
	 rr_1 rr1(.rr_1_data(data),.rr_1_sel(left),.rr_1_out(e));
	 rrot_8 rr8(.rrdata(e),.rrsel(select),.rrout(out));
	 
	 


endmodule
