`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:51:24 PM
// Design Name: 
// Module Name: dff_asyn_tb
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


module dff_asyn_tb;
reg clk;
reg d;
reg rstn;
wire q;

dff_asyn uut ( .d(d), .rstn(rstn), .clk(clk), .q(q));

always #5 clk = ~clk;

initial begin
    clk = 0;
    d = 0;
    rstn = 0;
    
    #10 rstn = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 rstn = 0;
    #10 rstn = 1;
    #20 $finish;
end
endmodule

