`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:55:51 PM
// Design Name: 
// Module Name: RF_tb
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


module RF_tb;
    wire [3:0]A; // A bus
	wire [3:0]B; // B bus
	reg SA; // Select A - A Address
	reg SB; // Select B - B Address
	reg [3:0]D; // Data input
	reg DA; // Data destination address
	reg W; // write enable
	reg rst; // positive logic asynchronous reset
	reg clk;

RF uut(A, B, SA, SB, D, DA, W, rst, clk);

initial begin
    clk = 0; 
    forever begin 
        #5 clk = ~clk;
    end 
end

initial begin
    clk = 0;
    rst = 0;
    SA = 0;
    SB = 0;
    D = 4'b0;
    DA = 0;
    W = 0;
    
    rst = 1;
    #10 rst = 0;
    
    #10 DA = 0; D = 4'b1010; W = 1; #10 W = 0; // write to R00
    #10 DA = 1; D = 4'b1100; W = 1; #10 W = 0; // write to R01
    
    SA = 0; #10
    SB = 1; #10
    
    SA = 0;
    SB = 1;#10
    
    $stop;
    end
endmodule
