`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:08:24 AM
// Design Name: 
// Module Name: num_Detector_tb
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


module num_Detector_tb;
reg[4:0] i;
wire out2, out3, out4, out5, outAll;

num_Detector uut(i, out2, out3, out4, out5, outAll);
initial begin
    #10 i = 5'b00000;
    #10 i = 5'b00001;
    #10 i = 5'b00010;
    #10 i = 5'b00011;
    #10 i = 5'b00100;
    #10 i = 5'b00101;
    #10 i = 5'b00110;
    #10 i = 5'b00111;
    #10 i = 5'b01000;
    #10 i = 5'b01001;
    #10 i = 5'b01010;
    #10 i = 5'b01011;
    #10 i = 5'b01100;
    #10 i = 5'b01101;
    #10 i = 5'b01110;
    #10 i = 5'b01111;
    #10 i = 5'b10000;
    #10 i = 5'b10001;
    #10 i = 5'b10010;
    #10 i = 5'b10011;
    #10 i = 5'b10100;
    #10 i = 5'b10101;
    #10 i = 5'b10110;
    #10 i = 5'b10111;
    #10 i = 5'b11000;
    #10 i = 5'b11001;
    #10 i = 5'b11010;
    #10 i = 5'b11011;
    #10 i = 5'b11100;
    #10 i = 5'b11101;
    #10 i = 5'b11110;
    #10 i = 5'b11111;
    
    #10 $stop;
end
endmodule
