`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:35 03/22/2017 
// Design Name: 
// Module Name:    bishift_datarev_8 
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


module rshift_8(
	input wire [7:0]rdata,
	input wire [2:0]rsel,
	output wire [7:0]rout,
	//output reg [3:0]rshift_4_out,
	wire y0,y1,y2,y3,y4,y5,y6,y7,
	wire z0,z1,z2,z3,z4,z5,z6,z7,
	//wire zero = 0
    supply0 zero
	 );
	
	mux2x1 m00(.in0(rdata[0]),.in1(rdata[1]),.sel(rsel[0]),.m_out(y0));
	mux2x1 m01(.in0(rdata[1]),.in1(rdata[2]),.sel(rsel[0]),.m_out(y1));
	mux2x1 m02(.in0(rdata[2]),.in1(rdata[3]),.sel(rsel[0]),.m_out(y2));
	mux2x1 m03(.in0(rdata[3]),.in1(rdata[4]),.sel(rsel[0]),.m_out(y3));
	mux2x1 m04(.in0(rdata[4]),.in1(rdata[5]),.sel(rsel[0]),.m_out(y4));
	mux2x1 m05(.in0(rdata[5]),.in1(rdata[6]),.sel(rsel[0]),.m_out(y5));
	mux2x1 m06(.in0(rdata[6]),.in1(rdata[7]),.sel(rsel[0]),.m_out(y6));
	mux2x1 m07(.in0(rdata[7]),.in1(zero),.sel(rsel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(y0),.in1(y2),.sel(rsel[1]),.m_out(z0));
	mux2x1 m11(.in0(y1),.in1(y3),.sel(rsel[1]),.m_out(z1));
	mux2x1 m12(.in0(y2),.in1(y4),.sel(rsel[1]),.m_out(z2));
	mux2x1 m13(.in0(y3),.in1(y5),.sel(rsel[1]),.m_out(z3));
	mux2x1 m14(.in0(y4),.in1(y6),.sel(rsel[1]),.m_out(z4));
	mux2x1 m15(.in0(y5),.in1(y7),.sel(rsel[1]),.m_out(z5));
	mux2x1 m16(.in0(y6),.in1(zero),.sel(rsel[1]),.m_out(z6));
	mux2x1 m17(.in0(y7),.in1(zero),.sel(rsel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(z0),.in1(z4),.sel(rsel[2]),.m_out(rout[0]));
	mux2x1 m21(.in0(z1),.in1(z5),.sel(rsel[2]),.m_out(rout[1]));
	mux2x1 m22(.in0(z2),.in1(z6),.sel(rsel[2]),.m_out(rout[2]));
	mux2x1 m23(.in0(z3),.in1(z7),.sel(rsel[2]),.m_out(rout[3]));
	mux2x1 m24(.in0(z4),.in1(zero),.sel(rsel[2]),.m_out(rout[4]));
	mux2x1 m25(.in0(z5),.in1(zero),.sel(rsel[2]),.m_out(rout[5]));
	mux2x1 m26(.in0(z6),.in1(zero),.sel(rsel[2]),.m_out(rout[6]));
	mux2x1 m27(.in0(z7),.in1(zero),.sel(rsel[2]),.m_out(rout[7]));

endmodule

module reva(
	 input [7:0]reva_data,
	 //input [2:0]reva_sel,
	 output [7:0]reva_out,
	 input reva_sel
	 );
	 mux2x1 rev00(.in0(reva_data[0]),.in1(reva_data[7]),.sel(reva_sel),.m_out(reva_out[0]));
	 mux2x1 rev01(.in0(reva_data[1]),.in1(reva_data[6]),.sel(reva_sel),.m_out(reva_out[1]));
	 mux2x1 rev02(.in0(reva_data[2]),.in1(reva_data[5]),.sel(reva_sel),.m_out(reva_out[2]));
	 mux2x1 rev03(.in0(reva_data[3]),.in1(reva_data[4]),.sel(reva_sel),.m_out(reva_out[3]));
	 mux2x1 rev04(.in0(reva_data[4]),.in1(reva_data[3]),.sel(reva_sel),.m_out(reva_out[4]));
	 mux2x1 rev05(.in0(reva_data[5]),.in1(reva_data[2]),.sel(reva_sel),.m_out(reva_out[5]));
	 mux2x1 rev06(.in0(reva_data[6]),.in1(reva_data[1]),.sel(reva_sel),.m_out(reva_out[6]));
	 mux2x1 rev07(.in0(reva_data[7]),.in1(reva_data[0]),.sel(reva_sel),.m_out(reva_out[7]));
	 
endmodule

module revb(
	 input [7:0]revb_data,
	 //input [2:0]reva_sel,
	 output [7:0]revb_out,
	 input revb_sel
	 );
	 mux2x1 rev00(.in0(revb_data[0]),.in1(revb_data[7]),.sel(revb_sel),.m_out(revb_out[0]));
	 mux2x1 rev01(.in0(revb_data[1]),.in1(revb_data[6]),.sel(revb_sel),.m_out(revb_out[1]));
	 mux2x1 rev02(.in0(revb_data[2]),.in1(revb_data[5]),.sel(revb_sel),.m_out(revb_out[2]));
	 mux2x1 rev03(.in0(revb_data[3]),.in1(revb_data[4]),.sel(revb_sel),.m_out(revb_out[3]));
	 mux2x1 rev04(.in0(revb_data[4]),.in1(revb_data[3]),.sel(revb_sel),.m_out(revb_out[4]));
	 mux2x1 rev05(.in0(revb_data[5]),.in1(revb_data[2]),.sel(revb_sel),.m_out(revb_out[5]));
	 mux2x1 rev06(.in0(revb_data[6]),.in1(revb_data[1]),.sel(revb_sel),.m_out(revb_out[6]));
	 mux2x1 rev07(.in0(revb_data[7]),.in1(revb_data[0]),.sel(revb_sel),.m_out(revb_out[7]));
	 
endmodule


module bishift_datarev_8(
	 input [7:0]data,
	 input left,
	 input [2:0]sel,
	 output [7:0]out,
	
	/* supply0 zero,
	 wire y0,y1,y2,y3,y4,y5,y6,y7,
	 wire z0,z1,z2,z3,z4,z5,z6,z7,
	*/
	 wire [7:0]p,
	 wire [7:0]q
	 
    );
	
	 /*
    always@(left)
	 begin
	 */
	 
  	 /*
	 mux2x1 rev00(.in0(data[0]),.in1(data[7]),.sel(left),.m_out(p[0]));
	 mux2x1 rev01(.in0(data[1]),.in1(data[6]),.sel(left),.m_out(p[1]));
	 mux2x1 rev02(.in0(data[2]),.in1(data[5]),.sel(left),.m_out(p[2]));
	 mux2x1 rev03(.in0(data[3]),.in1(data[4]),.sel(left),.m_out(p[3]));
	 mux2x1 rev04(.in0(data[4]),.in1(data[3]),.sel(left),.m_out(p[4]));
	 mux2x1 rev05(.in0(data[5]),.in1(data[2]),.sel(left),.m_out(p[5]));
	 mux2x1 rev06(.in0(data[6]),.in1(data[1]),.sel(left),.m_out(p[6]));
	 mux2x1 rev07(.in0(data[7]),.in1(data[0]),.sel(left),.m_out(p[7]));
	 */
	 
	// rshift_8 r_1(.rdata(p),.rsel(sel),.rout(q));
	
	/*
	//-------------rshift-------------------------
	
	mux2x1 m00(.in0(p[0]),.in1(p[1]),.sel(sel[0]),.m_out(y0));
	mux2x1 m01(.in0(p[1]),.in1(p[2]),.sel(sel[0]),.m_out(y1));
	mux2x1 m02(.in0(p[2]),.in1(p[3]),.sel(sel[0]),.m_out(y2));
	mux2x1 m03(.in0(p[3]),.in1(p[4]),.sel(sel[0]),.m_out(y3));
	mux2x1 m04(.in0(p[4]),.in1(p[5]),.sel(sel[0]),.m_out(y4));
	mux2x1 m05(.in0(p[5]),.in1(p[6]),.sel(sel[0]),.m_out(y5));
	mux2x1 m06(.in0(p[6]),.in1(p[7]),.sel(sel[0]),.m_out(y6));
	mux2x1 m07(.in0(p[7]),.in1(zero),.sel(sel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(z0));
	mux2x1 m11(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(z1));
	mux2x1 m12(.in0(y2),.in1(y4),.sel(sel[1]),.m_out(z2));
	mux2x1 m13(.in0(y3),.in1(y5),.sel(sel[1]),.m_out(z3));
	mux2x1 m14(.in0(y4),.in1(y6),.sel(sel[1]),.m_out(z4));
	mux2x1 m15(.in0(y5),.in1(y7),.sel(sel[1]),.m_out(z5));
	mux2x1 m16(.in0(y6),.in1(zero),.sel(sel[1]),.m_out(z6));
	mux2x1 m17(.in0(y7),.in1(zero),.sel(sel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(z0),.in1(z4),.sel(sel[2]),.m_out(q[0]));
	mux2x1 m21(.in0(z1),.in1(z5),.sel(sel[2]),.m_out(q[1]));
	mux2x1 m22(.in0(z2),.in1(z6),.sel(sel[2]),.m_out(q[2]));
	mux2x1 m23(.in0(z3),.in1(z7),.sel(sel[2]),.m_out(q[3]));
	mux2x1 m24(.in0(z4),.in1(zero),.sel(sel[2]),.m_out(q[4]));
	mux2x1 m25(.in0(z5),.in1(zero),.sel(sel[2]),.m_out(q[5]));
	mux2x1 m26(.in0(z6),.in1(zero),.sel(sel[2]),.m_out(q[6]));
	mux2x1 m27(.in0(z7),.in1(zero),.sel(sel[2]),.m_out(q[7]));
	
	//-------------------rshift----------------------------------------
	
	*/	
	
	 /*
	 mux2x1 rev10(.in0(q[0]),.in1(data[7]),.sel(left),.m_out(out[0]));
	 mux2x1 rev11(.in0(q[1]),.in1(data[6]),.sel(left),.m_out(out[1]));
	 mux2x1 rev12(.in0(q[2]),.in1(data[5]),.sel(left),.m_out(out[2]));
	 mux2x1 rev13(.in0(q[3]),.in1(data[4]),.sel(left),.m_out(out[3]));
	 mux2x1 rev14(.in0(q[4]),.in1(data[3]),.sel(left),.m_out(out[4]));
	 mux2x1 rev15(.in0(q[5]),.in1(data[2]),.sel(left),.m_out(out[5]));
	 mux2x1 rev16(.in0(q[6]),.in1(data[1]),.sel(left),.m_out(out[6]));
	 mux2x1 rev17(.in0(q[7]),.in1(data[0]),.sel(left),.m_out(out[7]));
	 */
	 
	 reva rev1(.reva_data(data),.reva_sel(left),.reva_out(p));
	 rshift_8 r_1(.rdata(p),.rsel(sel),.rout(q));
	 revb rev2(.revb_data(q),.revb_sel(left),.revb_out(out));
	 
	 
	 
	// end

endmodule
