`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:09 03/21/2017
// Design Name:   bishift_parallel_8
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/8 bit parallel bi-directional logical shifter/bishift_parallel_8/t_bishift_parallel_8.v
// Project Name:  bishift_parallel_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bishift_parallel_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_bishift_parallel_8;

	// Inputs
	reg [7:0] data;
	reg [2:0] sel;
	reg right;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	bishift_parallel_8 uut (
		.data(data), 
		.sel(sel), 
		.right(right), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 8'b00000000;
		sel = 3'b000;
		right = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 8'b10100101;
		right = 1'b1;
		sel = 3'b001;
		#50;
		//right = 0;
		sel = 010;
		#50;
		//right = 1;
		sel = 011;
		#50;
		//right = 0;
		sel = 100;
		#50;
		
		right = 1'b0;
		sel = 101;
		#50;
		sel = 110;
		#50;
		sel = 111;
		#50;
		$stop;
	end
      
endmodule

