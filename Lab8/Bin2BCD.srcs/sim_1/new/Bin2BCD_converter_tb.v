`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 03:16:18 PM
// Design Name: 
// Module Name: Bin2BCD_converter_tb
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


module Bin2BCD_converter_tb;

reg clk, en;
reg[11:0] bin_d_in;
wire [15:0] bin_d_out;
wire rdy; 

Bin2BCD_converter uut(clk, en, bin_d_in, bin_d_out, rdy);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
//        en = 0;
//        bin_d_in = 12'b0;
//        #10;
        
        //test case 1
        bin_d_in = 12'd121;
        en = 1;
        #10;
        en = 0;
        #1000;
        
        //test case 2
        bin_d_in = 12'd225;
        en = 1;
        #10;
        en = 0;
        #1000;
        
        //test case 3
        bin_d_in = 12'd1023;
        en = 1;
        #10;
        en = 0;
        #1000
        
        //test case 4
        bin_d_in = 12'd4095;
        en = 1;
        #10;
        en = 0;
        #1000
        $stop;
        end
endmodule
