`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 04:30:28 PM
// Design Name: 
// Module Name: top_Adder
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


module top_Adder(input[1:0] a, b, input ci, output[6:0] seg);
    wire[1:0] sum;
    wire co;
    CLA add2(a, b, ci, sum, co);
    wire[3:0] bcd;
    assign bcd = {1'b0, co, sum};
    BCD_7 DM(bcd, seg);
endmodule
