`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:17:28 PM
// Design Name: 
// Module Name: Subtraction
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


module Subtraction(a, b, result);
input [3:0] a, b;
output [3:0] result;

wire [3:0] b_complement;
wire co;

assign b_complement = ~b + 1;
CLA minus(a, b_complement, 1'b0, result, co);

endmodule
