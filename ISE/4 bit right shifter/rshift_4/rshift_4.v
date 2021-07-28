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

module rshift_4(
	input wire [3:0]data,
	input wire [1:0]sel,
	output wire [3:0]out,
	//output reg [3:0]rshift_4_out,
	wire y0,y1,y2,y3,
	//wire zero = 0
	supply0 zero
   
	// wire zero = GND,
	// GND =0
	// automatic wire zero =0;
	 //zero =0;
	 );
	
	/*
	mux2x1 m10(.in0(data[0]),.in1(data[1]),.sel(sel[0]),.m_out(y0));
	mux2x1 m11(.in0(data[1]),.in1(data[2]),.sel(sel[0]),.m_out(y1));
	mux2x1 m12(.in0(data[2]),.in1(data[3]),.sel(sel[0]),.m_out(y2));
	mux2x1 m13(.in0(data[3]),.in1(GND),.sel(sel[0]),.m_out(y3));
	
	mux2x1 m20(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(out[0]));
	mux2x1 m21(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(out[1]));
	mux2x1 m22(.in0(y2),.in1(GND),.sel(sel[1]),.m_out(out[2]));
	mux2x1 m23(.in0(y3),.in1(GND),.sel(sel[1]),.m_out(out[3]));
	*/
	
	
	mux2x1 m10(.in0(data[0]),.in1(data[1]),.sel(sel[0]),.m_out(y0));
	mux2x1 m11(.in0(data[1]),.in1(data[2]),.sel(sel[0]),.m_out(y1));
	mux2x1 m12(.in0(data[2]),.in1(data[3]),.sel(sel[0]),.m_out(y2));
	mux2x1 m13(.in0(data[3]),.in1(zero),.sel(sel[0]),.m_out(y3));
	
	mux2x1 m20(.in0(y0),.in1(y2),.sel(sel[1]),.m_out(out[0]));
	mux2x1 m21(.in0(y1),.in1(y3),.sel(sel[1]),.m_out(out[1]));
	mux2x1 m22(.in0(y2),.in1(zero),.sel(sel[1]),.m_out(out[2]));
	mux2x1 m23(.in0(y3),.in1(zero),.sel(sel[1]),.m_out(out[3]));
	

endmodule
