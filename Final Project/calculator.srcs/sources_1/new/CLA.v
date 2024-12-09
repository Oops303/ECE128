`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 04:27:03 PM
// Design Name: 
// Module Name: CLA
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


module CLA (
    input [3:0] a,        // 4-bit input A
    input [3:0] b,        // 4-bit input B
    input ci,             // Carry input (cin)
    output [3:0] sum,     // 4-bit sum output
    output co             // Carry out (cout)
);
    // Propagate (p) and Generate (g) signals
    wire [3:0] p, g;
    wire [4:0] c; // Carry signals (c[0] is cin)

    // Assign carry input to c[0]
    assign c[0] = ci;

    // Generate (g) and Propagate (p) calculations
    assign g[0] = a[0] & b[0];
    assign g[1] = a[1] & b[1];
    assign g[2] = a[2] & b[2];
    assign g[3] = a[3] & b[3];

    assign p[0] = a[0] ^ b[0];
    assign p[1] = a[1] ^ b[1];
    assign p[2] = a[2] ^ b[2];
    assign p[3] = a[3] ^ b[3];

    // Carry calculations
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign c[4] = g[3] | (p[3] & c[3]);

    // Sum calculations
    assign sum[0] = p[0] ^ c[0];
    assign sum[1] = p[1] ^ c[1];
    assign sum[2] = p[2] ^ c[2];
    assign sum[3] = p[3] ^ c[3];

    // Carry out
    assign co = c[4];

endmodule

