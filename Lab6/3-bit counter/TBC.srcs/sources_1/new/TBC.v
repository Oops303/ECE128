`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:41:22 PM
// Design Name: 
// Module Name: TBC
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


module TBC(
    input sysclk,
    output Q1,Q2,Q3
    );
 
    wire tt2,tt3;
    TFF n1(.clk(sysclk), .t(1'b1), .q(Q1));
    assign tt2 = Q1;
    TFF n2(.clk(sysclk), .t(tt2), .q(Q2));
    assign tt3 = Q2 & Q1;
    TFF n3(.clk(sysclk), .t(tt3), .q(Q3));
endmodule
