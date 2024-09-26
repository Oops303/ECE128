`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 02:00:11 PM
// Design Name: 
// Module Name: Adder
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


module Adder(input[1:0] a, b, input ci, output[6:0] seg);
    wire[1:0] sum;
    wire co;
    FA_2 top_FA(a, b, ci, sum, co);
    wire bcd;
    assign bcd = {1'b0, co, sum};
    BCD_7 DP(bcd, seg);
endmodule

module FA_1(input a, b, ci, output sum, co);
    wire n1, n2, n3;
    xor(sum, a, b, ci);
    and(n1, b, ci);
    and(n2, a, ci);
    and(n3, a, b);
    or(co, n1, n2, n3);
    
endmodule

module FA_2(input[1:0] a, b, input ci, output[1:0] sum, output co);
    wire c;
    FA_1 bit0(a[0], b[0], ci, sum[0], c);
    FA_1 bit1(a[1], b[1], c, sum[1], co);
    
endmodule
