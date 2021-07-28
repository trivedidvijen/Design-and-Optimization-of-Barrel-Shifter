`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:16 03/21/2017
// Design Name:   bishift_series_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit series bi-directional logical shifter/bishift_series_8/t_bishift_series_8.v
// Project Name:  bishift_series_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bishift_series_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_bishift_series_8;

	// Inputs
	reg [7:0] data;
	reg [2:0] s_sel;
	reg right;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	bishift_series_8 uut (
		.data(data), 
		.s_sel(s_sel), 
		.right(right), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 8'b00000000;
		s_sel = 3'b000;
		right = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 8'b10100101;
		right = 1'b1;
		s_sel = 3'b001;
		#50;
		//right = 1'b1;
		s_sel = 3'b010;
		#50;
		//right = 1'b1;
		s_sel = 3'b011;
		#50;
		//right = 1'b1;
		s_sel = 3'b100;
		#50;
		
		right = 1'b0;
		s_sel = 3'b101;
		#50;
		s_sel = 3'b110;
		#50;
		s_sel = 3'b111;
		#50;
		$stop;

	end
      
endmodule

