`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:47:45 03/14/2017
// Design Name:   rshift_4
// Module Name:   F:/BTECH/Mini Project/Barell shifter/ISE/4 bit right shifter/rshift_4/t_rshift_4.v
// Project Name:  rshift_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rshift_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_rshift_4;

	// Inputs
	reg [3:0] data;
	reg [1:0] sel;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	rshift_4 uut (
		.data(data), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 1000;
		sel = 01;
		$monitor("data[0] = %d \tdata[1] = %d \tdata[2] = %d \tdata[3] = %d \tsel[0] = %d \tsel[1] = %d, \tout[0]= %d \tout[1] =%d \tout[2] = %d \tout[3] =%d",data[0],data[1],data[2],data[3],sel[0],sel[1],out[0],out[1],out[2],out[3]);
		#50;
		sel = 10;
		#50;
		data = 1000;
		sel=01;
		#50;
		sel=11;
		
	end
      
endmodule

