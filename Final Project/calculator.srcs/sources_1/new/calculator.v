`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 01:49:47 PM
// Design Name: 
// Module Name: calculator
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


module calculator(clk, rst, a, b, op, seg, an);
input clk, rst;
input [3:0] a, b;
input [2:0] op;
output [6:0] seg;
output [3:0] an;

wire [7:0] result;

wire [11:0] bin_d_in;
wire [15:0] bcd_d_out;
wire rdy;

assign bin_d_in = {4'b0, result};

operation ops(a, b, op, result);
Bin2BCD_converter Bin2BCD(clk, rst, bin_d_in, bcd_d_out, rdy);
multi_seg_drive msd(clk, bcd_d_out, an, seg);

endmodule
