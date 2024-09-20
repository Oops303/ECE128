`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:36:09 PM
// Design Name: 
// Module Name: Mux_8_to_1
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


module Mux_8_to_1(    
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h,
    input s0,
    input s1,
    input s2,
    output y
    );
    
    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
    not (n1, s2);
    not (n2, s1);
    not (n3, s0);
    and (n4, n1, n2, n3, a);
    and (n5, n1, n2, s0, b);
    and (n6, n1, s1, n3, c);
    and (n7, n1, s1, s0, d);
    and (n8, s2, n2, n3, e);
    and (n9, s2, n2, s0, f);
    and (n10, s2, s1, n3, g);
    and (n11, s2, s1, s0, h);
    or (y, n4, n5, n6, n7, n8, n9, n10, n11);
    
    
endmodule
