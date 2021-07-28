`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:24 03/26/2017
// Design Name:   onescplbidir_rot_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit 1s cpl bi-dir rot/onescplbidir_rot_8/t_onescplbidir_rot_8.v
// Project Name:  onescplbidir_rot_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onescplbidir_rot_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_onescplbidir_rot_8;

	// Inputs
	reg [7:0] data;
	reg [2:0] sel;
	reg left;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	onescplbidir_rot_8 uut (
		.data(data), 
		.sel(sel), 
		.left(left), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 8'b00000000;
		sel = 3'b000;
		left = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 8'b10100101;
		left = 1'b0;
		sel = 3'b001;
		#50;
		//left = 1'b0;
		sel = 3'b010;
		#50;
		//left = 1'b1;
		sel = 3'b011;
		#50;
		//left = 1'b1;
		sel = 3'b100;
		#50;
		
		left = 1'b1;
		sel = 3'b101;
		#50;
		//left = 1'b1;
		sel = 3'b110;
		#50;
		sel = 3'b111;
		#50;
		$stop;
		
		
				

	end
      
endmodule

