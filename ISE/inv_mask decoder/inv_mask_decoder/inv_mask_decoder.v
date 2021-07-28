`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:12 03/27/2017 
// Design Name: 
// Module Name:    inv_mask_decoder 
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

module inv_mask_decoder(
	 input [2:0]d_in,
	 output [7:0]d_out,
	 wire db0,db1,db2,
	 wire g01,g02,g03,go4,go5,go6,go7,
	 //supply1 m7
	 supply0 m7
	 );
	 
	 not g8(db0,d_in[0]);
	 not g9(db1,d_in[1]);
	 not g10(db2,d_in[2]);
	 //not g11(d_out[7],m7);
	 
	 buf g11(d_out[7],m7);
	 buf g12(d_out[6],go1);
	 
	 and g1(go1,db2,db1,d_in[0]);
	 and g2(go2,db2,d_in[1],db0);
	 and g3(go3,db2,d_in[0]);
	 and g4(go4,db2,d_in[1]);
	 and g5(go5,d_in[2],db1,db0);
	 and g6(go6,d_in[2],db1);
	 and g7(go7,d_in[1],db0);
	 
	 //d_out[7] = m7;
	 //d_out[6] = g01;
	 
	 or m5(d_out[5],go1,go2);
	 or m4(d_out[4],go3,go4);
	 or m3(d_out[3],d_out[4],go5);
	 or m2(d_out[2],d_out[4],go6);
	 or m1(d_out[1],go3,go6,go7);
	 or m0(d_out[0],d_in[2],d_in[1],d_in[0]);
	 
endmodule

/*
module inv_mask_decoder(
	 input [2:0]d_in,
	 output [7:0]d_out,
	 wire db0,
	 wire db1,
	 wire db2,
	 wire go1,
	 wire go2,
	 wire go3,
	 wire go4
    );
	 
	 not g5(db0,d_in[0]);
	 not g6(db1,d_in[1]);
	 not g7(db2,d_in[2]);
	 
	 and m7(d_out[7],db2,d_in[1],db0);
	 and m5(d_out[5],db2,db1,d_in[0]);
	 and m4(d_out[4],db2,d_in[0]);
	 and g1(go1,d_in[2],db1,db0);
	 and g2(go2,d_in[2],db1);
	 and g3(go3,d_in[2],db0);
	 
	 
	 or m6(d_out[6],d_out[5],d_out[7]);
	 or m3(d_out[3],go1,d_out[4]);
	 or m2(d_out[2],d_out[4],go2);
	 or m1(d_out[1],d_out[2],go3);
	 or m0(d_out[0],d_in[0],d_in[2]);
	 
endmodule

*/
