`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:32 03/26/2017 
// Design Name: 
// Module Name:    mrs_8 
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

module mux4x1(
	 input [3:0]mux4data,
	 input [1:0]mux4sel,
	 output reg mux4out
    );
	 
	 always@(*)
	 begin
	 case (mux4sel)
	 2'b00: mux4out = mux4data[0];

    2'b01: mux4out = mux4data[1];

    2'b10: mux4out = mux4data[2];

    2'b11: mux4out = mux4data[3];
	 endcase
	 end
endmodule

module lrot_8(
	input wire [7:0]lrdata,
	input wire [2:0]lrsel,
	output wire [7:0]lrout,
	//output reg [3:0]rshift_4_out,
	wire [2:0]sel,
	wire y0,y1,y2,y3,y4,y5,y6,y7,
	wire z0,z1,z2,z3,z4,z5,z6,z7
	//wire zero = 0
    );
	
	not l0(sel[0],lrsel[0]);
	 not l1(sel[1],lrsel[1]);
	 not l2(sel[2],lrsel[2]);
	
	mux2x1 m00(.in0(lrdata[7]),.in1(lrdata[0]),.sel(sel[0]),.m_out(y0));
	mux2x1 m01(.in0(lrdata[0]),.in1(lrdata[1]),.sel(sel[0]),.m_out(y1));
	mux2x1 m02(.in0(lrdata[1]),.in1(lrdata[2]),.sel(sel[0]),.m_out(y2));
	mux2x1 m03(.in0(lrdata[2]),.in1(lrdata[3]),.sel(sel[0]),.m_out(y3));
	mux2x1 m04(.in0(lrdata[3]),.in1(lrdata[4]),.sel(sel[0]),.m_out(y4));
	mux2x1 m05(.in0(lrdata[4]),.in1(lrdata[5]),.sel(sel[0]),.m_out(y5));
	mux2x1 m06(.in0(lrdata[5]),.in1(lrdata[6]),.sel(sel[0]),.m_out(y6));
	mux2x1 m07(.in0(lrdata[6]),.in1(lrdata[7]),.sel(sel[0]),.m_out(y7));
	
	mux2x1 m10(.in0(lrdata[6]),.in1(y0),.sel(sel[1]),.m_out(z0));
	mux2x1 m11(.in0(lrdata[7]),.in1(y1),.sel(sel[1]),.m_out(z1));
	mux2x1 m12(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(z2));
	mux2x1 m13(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(z3));
	mux2x1 m14(.in0(y2),.in1(y4),.sel(sel[1]),.m_out(z4));
	mux2x1 m15(.in0(y3),.in1(y5),.sel(sel[1]),.m_out(z5));
	mux2x1 m16(.in0(y4),.in1(y6),.sel(sel[1]),.m_out(z6));
	mux2x1 m17(.in0(y5),.in1(y7),.sel(sel[1]),.m_out(z7));
	
	mux2x1 m20(.in0(lrdata[4]),.in1(z0),.sel(sel[2]),.m_out(lrout[0]));
	mux2x1 m21(.in0(lrdata[5]),.in1(z1),.sel(sel[2]),.m_out(lrout[1]));
	mux2x1 m22(.in0(lrdata[6]),.in1(z2),.sel(sel[2]),.m_out(lrout[2]));
	mux2x1 m23(.in0(lrdata[7]),.in1(z3),.sel(sel[2]),.m_out(lrout[3]));
	mux2x1 m24(.in0(z0),.in1(z4),.sel(sel[2]),.m_out(lrout[4]));
	mux2x1 m25(.in0(z1),.in1(z5),.sel(sel[2]),.m_out(lrout[5]));
	mux2x1 m26(.in0(z2),.in1(z6),.sel(sel[2]),.m_out(lrout[6]));
	mux2x1 m27(.in0(z3),.in1(z7),.sel(sel[2]),.m_out(lrout[7]));

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
	 input [7:0]onecpldata,
	 input [2:0]onecplsel,
	 input left,
	 output [7:0]onecplout,
	 wire [7:0]e,
	 wire [2:0]onecplselect
	 
    );
	 
	 xor x0(onecplselect[0],left,onecplsel[0]);
	 xor x1(onecplselect[1],left,onecplsel[1]);
	 xor x2(onecplselect[2],left,onecplsel[2]);
	 
	 
	 rr_1 rr1(.rr_1_data(onecpldata),.rr_1_sel(left),.rr_1_out(e));
	 rrot_8 rr8(.rrdata(e),.rrsel(onecplselect),.rrout(onecplout));
	 
endmodule

module inv_mask_decoder(
	 input [2:0]dim_in,
	 output [7:0]dim_out,
	 wire db0,db1,db2,
	 wire g01,g02,g03,go4,go5,go6,go7,
	 //supply1 m7
	 supply0 m7
	 );
	 
	 not g8(db0,dim_in[0]);
	 not g9(db1,dim_in[1]);
	 not g10(db2,dim_in[2]);
	 //not g11(d_out[7],m7);
	 
	 buf g11(dim_out[7],m7);
	 buf g12(dim_out[6],go1);
	 
	 and g1(go1,db2,db1,dim_in[0]);
	 and g2(go2,db2,dim_in[1],db0);
	 and g3(go3,db2,dim_in[0]);
	 and g4(go4,db2,dim_in[1]);
	 and g5(go5,dim_in[2],db1,db0);
	 and g6(go6,dim_in[2],db1);
	 and g7(go7,dim_in[1],db0);
	 
	 //d_out[7] = m7;
	 //d_out[6] = g01;
	 
	 or m5(dim_out[5],go1,go2);
	 or m4(dim_out[4],go3,go4);
	 or m3(dim_out[3],dim_out[4],go5);
	 or m2(dim_out[2],dim_out[4],go6);
	 or m1(dim_out[1],go3,go6,go7);
	 or m0(dim_out[0],dim_in[2],dim_in[1],dim_in[0]);
	 
endmodule


module mrs_8(
	 input [7:0]mrsdata,
	 input [2:0]mrssel,
	 input [1:0]mode,
	 output [7:0]mrsout,
	// wire [7:0]mask,
	 wire [7:0]inv_mask,
	 wire [7:0]r_mask,
	 wire [7:0]l_mask,
	 wire dir,
	 wire [7:0]rotatenout,
	 wire [7:0]shiftright,
	 wire [7:0]shiftleft,
	 wire [3:0]muxin0,
	 wire [3:0]muxin1,
	 wire [3:0]muxin2,
	 wire [3:0]muxin3,
	 wire [3:0]muxin4,
	 wire [3:0]muxin5,
	 wire [3:0]muxin6,
	 wire [3:0]muxin7,
	 supply0 r,
	 supply1 l
	 //supply0 zero,
	 //supply1 one
    );
	 
	 //buf direction(dir,left);
	 
	 buf direction(dir,mode[0]);
	 
	 buf muxin00(muxin0[0],rotatenout[0]);
	 buf muxin01(muxin0[1],rotatenout[0]);
	 buf muxin02(muxin0[2],shiftright[0]);
	 buf muxin03(muxin0[3],shiftleft[0]);
	 
	 buf muxin10(muxin1[0],rotatenout[1]);
	 buf muxin11(muxin1[1],rotatenout[1]);
	 buf muxin12(muxin1[2],shiftright[1]);
	 buf muxin13(muxin1[3],shiftleft[1]);
	 
	 buf muxin20(muxin2[0],rotatenout[2]);
	 buf muxin21(muxin2[1],rotatenout[2]);
	 buf muxin22(muxin2[2],shiftright[2]);
	 buf muxin23(muxin2[3],shiftleft[2]);
	 
	 buf muxin30(muxin3[0],rotatenout[3]);
	 buf muxin31(muxin3[1],rotatenout[3]);
	 buf muxin32(muxin3[2],shiftright[3]);
	 buf muxin33(muxin3[3],shiftleft[3]);
	 
	 buf muxin40(muxin4[0],rotatenout[4]);
	 buf muxin41(muxin4[1],rotatenout[4]);
	 buf muxin42(muxin4[2],shiftright[4]);
	 buf muxin43(muxin4[3],shiftleft[4]);
	 
	 buf muxin50(muxin5[0],rotatenout[5]);
	 buf muxin51(muxin5[1],rotatenout[5]);
	 buf muxin52(muxin5[2],shiftright[5]);
	 buf muxin53(muxin5[3],shiftleft[5]);
	 
	 buf muxin60(muxin6[0],rotatenout[6]);
	 buf muxin61(muxin6[1],rotatenout[6]);
	 buf muxin62(muxin6[2],shiftright[6]);
	 buf muxin63(muxin6[3],shiftleft[6]);
	 
	 buf muxin70(muxin7[0],rotatenout[7]);
	 buf muxin71(muxin7[1],rotatenout[7]);
	 buf muxin72(muxin7[2],shiftright[7]);
	 buf muxin73(muxin7[3],shiftleft[7]);
	 
	 inv_mask_decoder imd(.dim_in(mrssel),.dim_out(inv_mask));
	 /*
	 buf im0(inv_mask[0],dim_out[0]);
	 buf im1(inv_mask[1],dim_out[1]);
	 buf im2(inv_mask[2],dim_out[2]);
	 buf im3(inv_mask[3],dim_out[3]);
	 buf im4(inv_mask[4],dim_out[4]);
	 buf im5(inv_mask[5],dim_out[5]);
	 buf im6(inv_mask[6],dim_out[6]);
	 buf im7(inv_mask[7],dim_out[7]);
	 */
	 
	 buf rm0(r_mask[0],inv_mask[0]);
	 buf rm1(r_mask[1],inv_mask[1]);
	 buf rm2(r_mask[2],inv_mask[2]);
	 buf rm3(r_mask[3],inv_mask[3]);
	 buf rm4(r_mask[4],inv_mask[4]);
	 buf rm5(r_mask[5],inv_mask[5]);
	 buf rm6(r_mask[6],inv_mask[6]);
	 buf rm7(r_mask[7],inv_mask[7]);
	 
	 and shiftright0(shiftright[0],r_mask[0],rotatenout[0]);
	 and shiftright1(shiftright[1],r_mask[1],rotatenout[1]);
	 and shiftright2(shiftright[2],r_mask[2],rotatenout[2]);
	 and shiftright3(shiftright[3],r_mask[3],rotatenout[3]);
	 and shiftright4(shiftright[4],r_mask[4],rotatenout[4]);
	 and shiftright5(shiftright[5],r_mask[5],rotatenout[5]);
	 and shiftright6(shiftright[6],r_mask[6],rotatenout[6]);
	 and shiftright7(shiftright[7],r_mask[7],rotatenout[7]);
	 
	 and shiftleft0(shiftleft[0],l_mask[0],rotatenout[0]);
	 and shiftleft1(shiftleft[1],l_mask[1],rotatenout[1]);
	 and shiftleft2(shiftleft[2],l_mask[2],rotatenout[2]);
	 and shiftleft3(shiftleft[3],l_mask[3],rotatenout[3]);
	 and shiftleft4(shiftleft[4],l_mask[4],rotatenout[4]);
	 and shiftleft5(shiftleft[5],l_mask[5],rotatenout[5]);
	 and shiftleft6(shiftleft[6],l_mask[6],rotatenout[6]);
	 and shiftleft7(shiftleft[7],l_mask[7],rotatenout[7]);
	 
	 
	 lrot_8 lm(.lrdata(inv_mask),.lrsel(mrssel),.lrout(l_mask));
	 
	 /*
  	 if(mode[0] == 0)
	 begin
	 dir = zero;
	 end
	 if(mode[0] == 1)
	 begin
	 dir = one;
	 end
	 */
	 
	 onescplbidir_rot_8 rotaten(.onecpldata(mrsdata),.onecplsel(mrssel),.left(dir),.onecplout(rotatenout));
	 
	 mux4x1 final0(.mux4data(muxin0),.mux4sel(mode),.mux4out(mrsout[0]));
	 mux4x1 final1(.mux4data(muxin1),.mux4sel(mode),.mux4out(mrsout[1]));
	 mux4x1 final2(.mux4data(muxin2),.mux4sel(mode),.mux4out(mrsout[2]));
	 mux4x1 final3(.mux4data(muxin3),.mux4sel(mode),.mux4out(mrsout[3]));
	 mux4x1 final4(.mux4data(muxin4),.mux4sel(mode),.mux4out(mrsout[4]));
	 mux4x1 final5(.mux4data(muxin5),.mux4sel(mode),.mux4out(mrsout[5]));
	 mux4x1 final6(.mux4data(muxin6),.mux4sel(mode),.mux4out(mrsout[6]));
	 mux4x1 final7(.mux4data(muxin7),.mux4sel(mode),.mux4out(mrsout[7]));
	 
	 /*if(mode == 2'b00)
	 begin
	 mrsout = rotatenout;
	 end
	 else if(mode == 2'b01)
	 begin
	 mrsout = rotatenout
	 end
	 else if(mode == 2'b10)
	 begin
	 mrsout = shiftright;
	 end
	 else if(mode == 2'b11)
	 begin
	 mrsout = shiftleft;
	 end
	 */
endmodule
