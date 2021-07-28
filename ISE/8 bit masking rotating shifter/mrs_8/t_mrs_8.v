`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:08 03/28/2017
// Design Name:   mrs_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit masking rotating shifter/mrs_8/t_mrs_8.v
// Project Name:  mrs_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mrs_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_mrs_8;

	// Inputs
	reg [7:0] mrsdata;
	reg [2:0] mrssel;
	reg [1:0] mode;

	// Outputs
	wire [7:0] mrsout;

	// Instantiate the Unit Under Test (UUT)
	mrs_8 uut (
		.mrsdata(mrsdata), 
		.mrssel(mrssel), 
		.mode(mode), 
		.mrsout(mrsout)
	);

	initial begin
		// Initialize Inputs
		mrsdata = 8'b00000000;
		mrssel = 3'b000;
		mode = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		mrsdata = 8'b10100101;
		mrssel = 3'b001;
		mode = 2'b00;
		//$monitor("rotatenout[0] = %d \trotatenout[1] = %d \trotatenout[2] = %d \trotatenout[3] = %d \trotatenout[4] = %d \trotatenout[5] = %d \trotatenout[6] = %d \trotatenout[7] = %d",rotatenout[0],rotatenout[1],rotatenout[2],rotatenout[3],rotatenout[4],rotatenout[5],rotatenout[6],rotatenout[7]);
		#50;
		mrssel = 3'b010;
		#50;
		mode = 2'b01;
		mrssel = 3'b011;
		#50;
		mrssel = 3'b100;
		#50;
		mode = 2'b10;
		mrssel = 3'b101;
		#50;
		mrssel = 3'b110;
		#50;
		mode = 2'b11;
		mrssel = 3'b111;
		#50;
		$stop;
	end
      
endmodule

