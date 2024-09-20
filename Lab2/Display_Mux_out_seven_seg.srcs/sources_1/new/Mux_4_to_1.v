`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 03:57:17 PM
// Design Name: 
// Module Name: Mux_4_to_1
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


module Mux_4_to_1(o,i0,i1,i2,i3,s);
    input[1:0] i0;
    input[1:0] i1;
    input[1:0] i2;
    input[1:0] i3;
    input[1:0] s;
    output[1:0] o;
    
    wire n1,n2;
    wire a1,a2,a3,a4,a5,a6,a7,a8;
    not(n1, s[0]);
    not(n2, s[1]);
    and(a1, i0[0], n1, n2);
    and(a2, i0[1], n1, n2);
    and(a3, i1[0], s[0], n2);
    and(a4, i1[1], s[0], n2);
    and(a5, i2[0], n1, s[1]);
    and(a6, i2[1], n1, s[1]);
    and(a7, i3[0], s[0], s[1]);
    and(a8, i3[1], s[0], s[1]);
    
    or(o[0], a1,a3,a5,a7);
    or(o[1], a2,a4,a6,a8);
    

endmodule
