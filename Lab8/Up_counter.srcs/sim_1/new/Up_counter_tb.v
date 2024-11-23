`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:14:17 PM
// Design Name: 
// Module Name: Up_counter_tb
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


module Up_counter_tb;

    reg clk, reset;
    wire [11:0] count;
    wire en;
    Up_counter uut(
        .clk(clk),
        .reset(reset),
        .count(count),
        .en(en)
    );
    
    initial begin
        clk = 0;
        reset = 1;
        #20 reset = 0;
        #5000 reset =1;
        #10 reset =0;
        #10000 $stop;
     end
     
     always #5 clk = ~clk;
endmodule
