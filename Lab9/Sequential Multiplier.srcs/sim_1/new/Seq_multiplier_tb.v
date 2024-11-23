`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:07:18 PM
// Design Name: 
// Module Name: Seq_multiplier_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Seq_multiplier_tb;
reg clk;
reg rst;
reg [3:0] multiplicand;
reg [3:0] multiplier;
wire [7:0] product;

Seq_multiplier uut(clk, rst, multiplicand, multiplier, product);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
  
    multiplicand = 4'b0110;
    multiplier = 4'b0011;
    
    #10 rst = 0;
    
    #200 $stop;
end

endmodule
