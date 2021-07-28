`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:41:58 03/21/2017
// Design Name:   lshift_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit logical left shifter/lshift_8/t_lshift_8.v
// Project Name:  lshift_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lshift_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_lshift_8;

	// Inputs
	reg [7:0] data;
	reg [2:0] lsel;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	lshift_8 uut (
		.data(data), 
		.lsel(lsel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 8'b00000000;
		lsel = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 8'b10100101;
		lsel = 3'b001;
		#50;
		//data = 00000001;
		lsel = 3'b010;
		#50;
		//data = 00000001;
		lsel = 3'b011;
		#50;
		//data = 00000001;
		lsel = 3'b100;
		#50;
		//data = 00000001;
		lsel = 3'b101;
		#50;
		//data = 00000001;
		lsel = 3'b110;
		#50;
		//data = 00000001;
		lsel = 3'b111;
		#50;
		$stop;

	end
      
endmodule

