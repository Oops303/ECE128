`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:12:46 PM
// Design Name: 
// Module Name: SRF
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


module SRF(
input S,R,
input clk,
output reg Q, 
output Qbar
    );
    assign Qbar = ~Q;
    
    always @(posedge clk) begin
        if (S & ~R) Q <= 1;
        else if (~S & R) Q <= 0;
        else if (S & R) Q <=1'bx;
     end
endmodule
