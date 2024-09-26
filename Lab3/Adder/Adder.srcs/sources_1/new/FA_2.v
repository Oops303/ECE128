`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 03:52:00 PM
// Design Name: 
// Module Name: FA_2
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


module FA_2(input[1:0] a, b, input ci, output[1:0] sum, output co);
wire c;
FA_1 bit0(a[0], b[0], ci, sum[0], c);
FA_1 bit1(a[1], b[1], c, sum[1], co);
endmodule
