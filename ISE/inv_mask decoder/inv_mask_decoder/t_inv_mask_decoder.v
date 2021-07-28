`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:05 03/28/2017
// Design Name:   inv_mask_decoder
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/inv_mask decoder/inv_mask_decoder/t_inv_mask_decoder.v
// Project Name:  inv_mask_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inv_mask_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_inv_mask_decoder;

	// Inputs
	reg [2:0] d_in;

	// Outputs
	wire [7:0] d_out;

	// Instantiate the Unit Under Test (UUT)
	inv_mask_decoder uut (
		.d_in(d_in), 
		.d_out(d_out)
	);

	initial begin
		// Initialize Inputs
		d_in = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		d_in = 3'b001;
		#50;
		d_in = 3'b010;
		#50;
		d_in = 3'b011;
		#50;
		d_in = 3'b100;
		#50;
		d_in = 3'b101;
		#50;
		d_in = 3'b110;
		#50;
		d_in = 3'b111;
		#50;
		
	end
      
endmodule

