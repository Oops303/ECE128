`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:20:09 PM
// Design Name: 
// Module Name: Mux_4_1_tb
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


module Mux_4_1_tb;
wire [1:0] o;
reg [1:0] i0, i1, i2, i3, s;

Mux_4_1 uut (o, i0, i1, i2, i3, s);
initial begin
    #10 i0=2'b00; i1=2'b00; i2=2'b00; i3=2'b00; s=2'b00;
    #10 i0=2'b01; i1=2'b00; i2=2'b00; i3=2'b00; s=2'b00;
    #10 i0=2'b10; i1=2'b00; i2=2'b00; i3=2'b00; s=2'b00;
    #10 i0=2'b11; i1=2'b00; i2=2'b00; i3=2'b00; s=2'b00;
    
    #10 i0=2'b00; i1=2'b01; i2=2'b00; i3=2'b00; s=2'b01;
    #10 i0=2'b00; i1=2'b10; i2=2'b00; i3=2'b00; s=2'b01;
    #10 i0=2'b00; i1=2'b11; i2=2'b00; i3=2'b00; s=2'b01;
    
    #10 i0=2'b00; i1=2'b00; i2=2'b01; i3=2'b00; s=2'b10;
    #10 i0=2'b00; i1=2'b00; i2=2'b10; i3=2'b00; s=2'b10;
    #10 i0=2'b00; i1=2'b00; i2=2'b11; i3=2'b00; s=2'b10;
    
    #10 i0=2'b00; i1=2'b00; i2=2'b00; i3=2'b01; s=2'b11;
    #10 i0=2'b00; i1=2'b00; i2=2'b00; i3=2'b10; s=2'b11;
    #10 i0=2'b00; i1=2'b00; i2=2'b00; i3=2'b11; s=2'b11;
    
    #10 $stop;
end


endmodule
