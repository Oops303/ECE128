`timescale 1ns / 1ps 
module tb_moore; 
// Inputs 
reg clk; 
reg reset; 
reg P1; // Output 
wire z; 
// Instantiate the Moore sequence detector (UUT) 
moore uut ( .P1(P1), .clk(clk), .reset(reset), .z(z) ); 
// Clock generation 
initial begin 
clk = 0; 
forever #5 clk = ~clk; // 10 ns clock period 
end 
// Test stimulus 
initial begin // Initialize inputs 
reset = 1; 
P1 = 0; 
#10 reset = 0; // Release reset after 10 ns 
// Apply sequence to detect '1100' 
P1 = 1; // '1' 
#10 P1 = 1; // '1' 
#10 P1 = 0; // '0' 
#10 P1 = 0; // '0' - sequence '1100' detected 
// Observe z output 
#10 P1 = 1; // '1' 
#10 P1 = 1; // '1' 
#10 P1 = 0; // '0' 
#10 P1 = 1; // '1' - no detection 
// Apply overlapping sequence 
#10 P1 = 1; // '1' 
#10 P1 = 1; // '1' 
#10 P1 = 0; // '0' 
#10 P1 = 0; // '0' - sequence '1100' detected 
// Apply partial sequence to ensure no false detection 
#10 P1 = 1; // '1' 
#10 P1 = 0; // '0' 
#10 P1 = 1; // '1' 
#10 P1 = 0; // '0' - no detection 
#10 $finish; // End simulation 
end 
endmodule