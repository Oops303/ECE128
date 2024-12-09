`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 02:51:47 PM
// Design Name: 
// Module Name: calculator_tb
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


module calculator_tb;
reg clk, rst;
reg [3:0] a, b;
reg [2:0] op;
wire [6:0] out;
wire [3:0] an; 

calculator uut(clk, rst, a, b, op, out, an);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    #10 rst = 0;
    
    #20 a=4'b0010; b=4'b0011; op=3'b000;
    
    
    #20 a=4'b0011; b=4'b0010; op=3'b001;
    
    #20 a=4'b0011; b=4'b0010; op=3'b010;
    
    #20 a=4'b0100; b=4'b0010; op=3'b011;

    #20 a=4'b1010; b=4'b0010; op=3'b100;
    
    #20 a=4'b1010; b=4'b0001; op=3'b101;
    
    #20 a=4'b1010; b=4'b0010; op=3'b110;
    
    #20 a=4'b1110; b=4'b0000; op=3'b111;
    
  
    
     
    #20$stop;
    
end
    
endmodule
