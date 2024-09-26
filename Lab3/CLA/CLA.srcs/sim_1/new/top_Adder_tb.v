`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 07:18:19 PM
// Design Name: 
// Module Name: top_Adder_tb
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


module top_Adder_tb;
reg[1:0] a, b;
reg ci;
wire[6:0] seg;

top_Adder uut(a, b, ci, seg);
initial begin
    #10 a=2'b00; b = 2'b00; ci = 1'b0;
    #10 a=2'b00; b = 2'b01; ci = 1'b0;
    #10 a=2'b00; b = 2'b10; ci = 1'b0;
    #10 a=2'b00; b = 2'b11; ci = 1'b0;
    
    #10 a=2'b01; b = 2'b00; ci = 1'b0;
    #10 a=2'b01; b = 2'b01; ci = 1'b0;
    #10 a=2'b01; b = 2'b10; ci = 1'b0;
    #10 a=2'b01; b = 2'b11; ci = 1'b0;
    
    #10 a=2'b10; b = 2'b00; ci = 1'b0;
    #10 a=2'b10; b = 2'b01; ci = 1'b0;
    #10 a=2'b10; b = 2'b10; ci = 1'b0;
    #10 a=2'b10; b = 2'b11; ci = 1'b0;
    
    #10 a=2'b11; b = 2'b00; ci = 1'b0;
    #10 a=2'b11; b = 2'b01; ci = 1'b0;
    #10 a=2'b11; b = 2'b10; ci = 1'b0;
    #10 a=2'b11; b = 2'b11; ci = 1'b0;
    
    #10 a=2'b00; b = 2'b00; ci = 1'b0;
    #10 a=2'b01; b = 2'b00; ci = 1'b0;
    #10 a=2'b10; b = 2'b00; ci = 1'b0;
    #10 a=2'b11; b = 2'b00; ci = 1'b0;
    
    #10 a=2'b00; b = 2'b01; ci = 1'b0;
    #10 a=2'b01; b = 2'b01; ci = 1'b0;
    #10 a=2'b10; b = 2'b01; ci = 1'b0;
    #10 a=2'b11; b = 2'b01; ci = 1'b0;
    
    #10 a=2'b00; b = 2'b10; ci = 1'b0;
    #10 a=2'b01; b = 2'b10; ci = 1'b0;
    #10 a=2'b10; b = 2'b10; ci = 1'b0;
    #10 a=2'b11; b = 2'b10; ci = 1'b0;
    
    #10 a=2'b00; b = 2'b11; ci = 1'b0;
    #10 a=2'b01; b = 2'b11; ci = 1'b0;
    #10 a=2'b10; b = 2'b11; ci = 1'b0;
    #10 a=2'b11; b = 2'b11; ci = 1'b0;
    
    #10 a=2'b11; b = 2'b11; ci = 1'b1;
    
    #10 $stop;
end
endmodule

