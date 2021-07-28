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
	
	mux2x1 rm00(.in0(rdata[0]),.in1(rdata[1]),.sel(rsel[0]),.m_out(y0));
	mux2x1 rm01(.in0(rdata[1]),.in1(rdata[2]),.sel(rsel[0]),.m_out(y1));
	mux2x1 rm02(.in0(rdata[2]),.in1(rdata[3]),.sel(rsel[0]),.m_out(y2));
	mux2x1 rm03(.in0(rdata[3]),.in1(rdata[4]),.sel(rsel[0]),.m_out(y3));
	mux2x1 rm04(.in0(rdata[4]),.in1(rdata[5]),.sel(rsel[0]),.m_out(y4));
	mux2x1 rm05(.in0(rdata[5]),.in1(rdata[6]),.sel(rsel[0]),.m_out(y5));
	mux2x1 rm06(.in0(rdata[6]),.in1(rdata[7]),.sel(rsel[0]),.m_out(y6));
	mux2x1 rm07(.in0(rdata[7]),.in1(zero),.sel(rsel[0]),.m_out(y7));
	
	mux2x1 rm10(.in0(y0),.in1(y2),.sel(rsel[1]),.m_out(z0));
	mux2x1 rm11(.in0(y1),.in1(y3),.sel(rsel[1]),.m_out(z1));
	mux2x1 rm12(.in0(y2),.in1(y4),.sel(rsel[1]),.m_out(z2));
	mux2x1 rm13(.in0(y3),.in1(y5),.sel(rsel[1]),.m_out(z3));
	mux2x1 rm14(.in0(y4),.in1(y6),.sel(rsel[1]),.m_out(z4));
	mux2x1 rm15(.in0(y5),.in1(y7),.sel(rsel[1]),.m_out(z5));
	mux2x1 rm16(.in0(y6),.in1(zero),.sel(rsel[1]),.m_out(z6));
	mux2x1 rm17(.in0(y7),.in1(zero),.sel(rsel[1]),.m_out(z7));
	
	mux2x1 rm20(.in0(z0),.in1(z4),.sel(rsel[2]),.m_out(rout[0]));
	mux2x1 rm21(.in0(z1),.in1(z5),.sel(rsel[2]),.m_out(rout[1]));
	mux2x1 rm22(.in0(z2),.in1(z6),.sel(rsel[2]),.m_out(rout[2]));
	mux2x1 rm23(.in0(z3),.in1(z7),.sel(rsel[2]),.m_out(rout[3]));
	mux2x1 rm24(.in0(z4),.in1(zero),.sel(rsel[2]),.m_out(rout[4]));
	mux2x1 rm25(.in0(z5),.in1(zero),.sel(rsel[2]),.m_out(rout[5]));
	mux2x1 rm26(.in0(z6),.in1(zero),.sel(rsel[2]),.m_out(rout[6]));
	mux2x1 rm27(.in0(z7),.in1(zero),.sel(rsel[2]),.m_out(rout[7]));

endmodule

/*
module lshift_8(
	input wire [7:0]ldata,
	input wire [2:0]lsel,
	output wire [7:0]lout,
	//output reg [3:0]rshift_4_out,
	wire a0,a1,a2,a3,a4,a5,a6,a7,
	wire b0,b1,b2,b3,b4,b5,b6,b7,
	//wire zero = 0
	supply0 zero
    );
	
	mux2x1 lm00(.in0(ldata[0]),.in1(ldata[1]),.sel(lsel[0]),.m_out(a0));
	mux2x1 lm01(.in0(ldata[1]),.in1(ldata[2]),.sel(lsel[0]),.m_out(a1));
	mux2x1 lm02(.in0(ldata[2]),.in1(ldata[3]),.sel(lsel[0]),.m_out(a2));
	mux2x1 lm03(.in0(ldata[3]),.in1(ldata[4]),.sel(lsel[0]),.m_out(a3));
	mux2x1 lm04(.in0(ldata[4]),.in1(ldata[5]),.sel(lsel[0]),.m_out(a4));
	mux2x1 lm05(.in0(ldata[5]),.in1(ldata[6]),.sel(lsel[0]),.m_out(a5));
	mux2x1 lm06(.in0(ldata[6]),.in1(ldata[7]),.sel(lsel[0]),.m_out(a6));
	mux2x1 lm07(.in0(ldata[7]),.in1(zero),.sel(lsel[0]),.m_out(a7));
	
	mux2x1 lm10(.in0(a0),.in1(a2),.sel(lsel[1]),.m_out(b0));
	mux2x1 lm11(.in0(a1),.in1(a3),.sel(lsel[1]),.m_out(b1));
	mux2x1 lm12(.in0(a2),.in1(a4),.sel(lsel[1]),.m_out(b2));
	mux2x1 lm13(.in0(a3),.in1(a5),.sel(lsel[1]),.m_out(b3));
	mux2x1 lm14(.in0(a4),.in1(a6),.sel(lsel[1]),.m_out(b4));
	mux2x1 lm15(.in0(a5),.in1(a7),.sel(lsel[1]),.m_out(b5));
	mux2x1 lm16(.in0(a6),.in1(zero),.sel(lsel[1]),.m_out(b6));
	mux2x1 lm17(.in0(a7),.in1(zero),.sel(lsel[1]),.m_out(b7));
	
	mux2x1 lm20(.in0(b0),.in1(b4),.sel(lsel[2]),.m_out(lout[0]));
	mux2x1 lm21(.in0(b1),.in1(b5),.sel(lsel[2]),.m_out(lout[1]));
	mux2x1 lm22(.in0(b2),.in1(b6),.sel(lsel[2]),.m_out(lout[2]));
	mux2x1 lm23(.in0(b3),.in1(b7),.sel(lsel[2]),.m_out(lout[3]));
	mux2x1 lm24(.in0(b4),.in1(zero),.sel(lsel[2]),.m_out(lout[4]));
	mux2x1 lm25(.in0(b5),.in1(zero),.sel(lsel[2]),.m_out(lout[5]));
	mux2x1 lm26(.in0(b6),.in1(zero),.sel(lsel[2]),.m_out(lout[6]));
	mux2x1 lm27(.in0(b7),.in1(zero),.sel(lsel[2]),.m_out(lout[7]));

endmodule
*/

module lshift_8(
	 input wire [7:0]ldata,
	input wire [2:0]lsel,
	output wire [7:0]lout,
	//output reg [3:0]rshift_4_out,
	wire y0,y1,y2,y3,y4,y5,y6,y7,
	wire z0,z1,z2,z3,z4,z5,z6,z7,
	wire [2:0]sel,
	//wire zero = 0
    supply0 zero
	 );
	 
	 not l0(sel[0],lsel[0]);
	 not l1(sel[1],lsel[1]);
	 not l2(sel[2],lsel[2]);
	
	mux2x1 m00(.in0(zero),.in1(ldata[0]),.sel(sel[0]),.m_out(y0));
	mux2x1 m01(.in0(ldata[0]),.in1(ldata[1]),.sel(sel[0]),.m_out(y1));
	mux2x1 m02(.in0(ldata[1]),.in1(ldata[2]),.sel(sel[0]),.m_out(y2));
	mux2x1 m03(.in0(ldata[2]),.in1(ldata[3]),.sel(sel[0]),.m_out(y3));
	mux2x1 m04(.in0(ldata[3]),.in1(ldata[4]),.sel(sel[0]),.m_out(y4));
	mux2x1 m05(.in0(ldata[4]),.in1(ldata[5]),.sel(sel[0]),.m_out(y5));
	mux2x1 m06(.in0(ldata[5]),.in1(ldata[6]),.sel(sel[0]),.m_out(y6));
	mux2x1 m07(.in0(ldata[6]),.in1(ldata[7]),.sel(sel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(zero),.in1(y0),.sel(sel[1]),.m_out(z0));
	mux2x1 m11(.in0(zero),.in1(y1),.sel(sel[1]),.m_out(z1));
	mux2x1 m12(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(z2));
	mux2x1 m13(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(z3));
	mux2x1 m14(.in0(y2),.in1(y4),.sel(sel[1]),.m_out(z4));
	mux2x1 m15(.in0(y3),.in1(y5),.sel(sel[1]),.m_out(z5));
	mux2x1 m16(.in0(y4),.in1(y6),.sel(sel[1]),.m_out(z6));
	mux2x1 m17(.in0(y5),.in1(y7),.sel(sel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(zero),.in1(z0),.sel(sel[2]),.m_out(lout[0]));
	mux2x1 m21(.in0(zero),.in1(z1),.sel(sel[2]),.m_out(lout[1]));
	mux2x1 m22(.in0(zero),.in1(z2),.sel(sel[2]),.m_out(lout[2]));
	mux2x1 m23(.in0(zero),.in1(z3),.sel(sel[2]),.m_out(lout[3]));
	mux2x1 m24(.in0(z0),.in1(z4),.sel(sel[2]),.m_out(lout[4]));
	mux2x1 m25(.in0(z1),.in1(z5),.sel(sel[2]),.m_out(lout[5]));
	mux2x1 m26(.in0(z2),.in1(z6),.sel(sel[2]),.m_out(lout[6]));
	mux2x1 m27(.in0(z3),.in1(z7),.sel(sel[2]),.m_out(lout[7]));

endmodule



module bishift_series_8(
	 input wire [7:0]data,
	 input wire [2:0]s_sel,
	 input wire right,
	 output wire [7:0]out,
	 wire [7:0]c,
	 //wire c0,c1,c2,c3,c4,c5,c6,c7,	 
	 wire [2:0]selr,
	 wire [2:0]sell,
	 wire left
	 );
	 
	 rshift_8 r_1(.rdata(data),.rsel(selr),.rout(c));
	 lshift_8 l_1(.ldata(c),.lsel(sell),.lout(out));

	 
	// rshift_8 r_1(.rdata[0](data[0]),.rdata[1](data[1]),.rdata[2](data[2]),.rdata[3](data[3]),.rdata[4](data[4]),.rdata[5](data[5]),.rdata[6](data[6]),.rdata[7](data[7]),.rsel[0](sel[0]),.rsel[1](sel[1]),.rsel[2](sel[2]),.rout[0](c0),.rout[1](c1),.rout[2](c2),.rout[3](c3),.rout[4](c4),.rout[5](c5),.rout[6](c6),.rout[7](c7));
	// lshift_8 l_1(.ldata[0](c0),.ldata[1](c1),.ldata[2](c2),.ldata[3](c3),.ldata[4](c4),.ldata[5](c5),.ldata[6](c6),.ldata[7](c7),.lsel[0](sel[3]),.lsel[1](sel[4]),.lsel[2](sel[5]),.lout[0](out[0]),.lout[1](out[1]),.lout[2](out[2]),.lout[3](out[3]),.lout[4](out[4]),.lout[5](out[5]),.lout[6](out[6]),.lout[7](out[7]));
	 
	// rshift_8 r_1(.rdata[](data[0]),.rdata[](data[1]),.rdata[](data[2]),.rdata[](data[3]),.rdata[](data[4]),.rdata[](data[5]),.rdata[](data[6]),.rdata[](data[7]),.rsel[](sel[0]),.rsel[](sel[1]),.rsel[](sel[2]),.rout[](c0),.rout[](c1),.rout[](c2),.rout[](c3),.rout[](c4),.rout[](c5),.rout[](c6),.rout[](c7));
	// lshift_8 l_1(.ldata[](c0),.ldata[](c1),.ldata[](c2),.ldata[](c3),.ldata[](c4),.ldata[](c5),.ldata[](c6),.ldata[](c7),.lsel[](sel[3]),.lsel[](sel[4]),.lsel[](sel[5]),.lout[](out[0]),.lout[](out[1]),.lout[](out[2]),.lout[](out[3]),.lout[](out[4]),.lout[](out[5]),.lout[](out[6]),.lout[](out[7]));
	 
	 not nl(left,right);
	 
	 and a0(selr[0],right,s_sel[0]);
	 and a1(selr[1],right,s_sel[1]);
	 and a2(selr[2],right,s_sel[2]);
	 and a3(sell[0],left,s_sel[0]);
	 and a4(sell[1],left,s_sel[1]);
	 and a5(sell[2],left,s_sel[2]);
	 
endmodule 