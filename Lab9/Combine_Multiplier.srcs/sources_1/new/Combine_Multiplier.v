`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:27:18 PM
// Design Name: 
// Module Name: Combine_Multiplier
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


module Combine_Multiplier(
input [3:0] a,
input [3:0] b,
output [7:0] p
);

wire [3:0] m0;
wire [4:0] m1;
wire [5:0] m2;
wire [6:0] m3;
wire [7:0] s1,s2,s3;

assign m0 = a & {4{b[0]}};
    assign m1 = (a & {4{b[1]}}) << 1;
    assign m2 = (a & {4{b[2]}}) << 2;
    assign m3 = (a & {4{b[3]}}) << 3;

    assign s1 = m1 + {4'b0000, m0};
    assign s2 = m2 + s1;
    assign s3 = m3 + s2;
    assign p = s3;

    
endmodule
