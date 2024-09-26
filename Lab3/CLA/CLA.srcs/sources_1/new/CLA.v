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


module CLA(input[1:0] a, b, input ci, output[1:0] sum, output co);
    wire p0, p1;
    wire g0, g1;
    wire c1, c2;
    
    assign p0 = a[0]^b[0];
    assign p1 = a[1]^b[1];
    
    assign g0 = a[0]&b[0];
    assign g1 = a[1]&b[1];
    
    assign c1 = g0|(p0&ci);
    assign c2 = g1|(p1&c1);
    
    assign sum[0] = p0 ^ ci;
    assign sum[1] = p1 ^ c1;
    
    assign co = c2;
endmodule
