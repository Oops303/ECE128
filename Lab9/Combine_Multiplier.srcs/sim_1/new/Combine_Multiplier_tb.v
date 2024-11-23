`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 04:07:33 PM
// Design Name: 
// Module Name: Combine_Multiplier_tb
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


module Combine_Multiplier_tb;
reg [3:0] a,b;
wire [7:0] p;

Combine_Multiplier uut (a,b,p);

initial begin
    a = 4'b0110; b = 4'b0011; #10
    a = 4'b0011; b = 4'b0110; #10
    a = 4'b0111; b = 4'b0010; #10
    
    #10 $stop;
end
endmodule
