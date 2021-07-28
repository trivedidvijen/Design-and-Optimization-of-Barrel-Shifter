`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:13 03/19/2017
// Design Name:   rshift_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit right shifter/rshift_8/t_rshift_8.v
// Project Name:  rshift_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rshift_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_rshift_8;

	// Inputs
	reg [7:0] data;
	reg [2:0] sel;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	rshift_8 uut (
		.data(data), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 8'b00000000;
		sel = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 8'b10100101;
		sel = 3'b001;
		//$monitor("data[0] = %d \tdata[1] = %d \tdata[2] = %d \tdata[3] = %d	\tdata[4] = %d	\tdata[5] = %d	\tdata[6] = %d	\tdata[7] = %d \tsel[0] = %d \tsel[1] = %d	\tsel[2] = %d, \tout[0]= %d \tout[1] =%d \tout[2] = %d \tout[3] =%d	\tout[4] = %d	\tout[5] = %d	\tout[6] = %d	\tout[7] = %d",data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],sel[0],sel[1],sel[2],out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]);
		#50;
		//data = 10100101;
		sel = 3'b010;
		#50;
		sel=3'b011;
		#50;
		sel=3'b100;
		#50;
		sel=3'b101;
		#50;
		sel=3'b110;
		#50;
		sel=3'b111;
		#50;
		//data = 8'b00001010;
		//sel=3'b001;
		$stop; 
	end
      
endmodule

