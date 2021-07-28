`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:17 03/27/2017
// Design Name:   mux4x1
// Module Name:   C:/Users/student/Desktop/dvijen/mux4x1/t_mux4x1.v
// Project Name:  mux4x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_mux4x1;

	// Inputs
	reg [3:0] data;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux4x1 uut (
		.data(data), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 0000;
		sel = 00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 4'b1010;
		sel = 2'b00;
		#50;
		sel = 2'b01;
		#50;
		sel = 2'b10;
		#50;
		sel = 2'b11;
		#50;
		

	end
      
endmodule

