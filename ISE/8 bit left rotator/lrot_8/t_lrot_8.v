`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:01 03/26/2017
// Design Name:   lrot_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit left rotator/lrot_8/t_lrot_8.v
// Project Name:  lrot_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lrot_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_lrot_8;

	// Inputs
	reg [7:0] lrdata;
	reg [2:0] lrsel;

	// Outputs
	wire [7:0] lrout;

	// Instantiate the Unit Under Test (UUT)
	lrot_8 uut (
		.lrdata(lrdata), 
		.lrsel(lrsel), 
		.lrout(lrout)
	);

	initial begin
		// Initialize Inputs
		lrdata = 8'b10100101;
		lrsel = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		lrdata = 8'b10100101;
		lrsel = 3'b001;
		#50;
		lrsel = 3'b010;
		#50;
		lrsel = 3'b011;
		#50;
		lrsel = 3'b100;
		#50;
		lrsel = 3'b101;
		#50;
		lrsel = 3'b110;
		#50;
		lrsel = 3'b111;
		#50;
		$stop;

	end
      
endmodule

