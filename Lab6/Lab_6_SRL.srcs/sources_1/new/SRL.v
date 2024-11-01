`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:52:46 PM
// Design Name: 
// Module Name: SRL
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


module SRL(
input S,R,
output Q, Qbar
    );
    nor #1 N1(Q, R, Qbar);
    nor #1 N2(Qbar, S, Q);
endmodule
