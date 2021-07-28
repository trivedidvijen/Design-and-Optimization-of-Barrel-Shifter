`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:15 03/11/2017
// Design Name:   mux2x1
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/Mux 2x1_1/mux2x1/t_mux2x1.v
// Project Name:  mux2x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_mux2x1;

	// Inputs
	reg in0;
	reg in1;
	reg sel;

	// Outputs
	wire m_out;

	// Instantiate the Unit Under Test (UUT)
	mux2x1 uut (
		.in0(in0), 
		.in1(in1), 
		.sel(sel), 
		.m_out(m_out)
	);

	initial begin
		// Initialize Inputs
		in0 = 0;
		in1 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in0=0;
		in1=1;
		sel=1;
		#50;
		sel=0;

	end
      
endmodule

