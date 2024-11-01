`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:57:13 PM
// Design Name: 
// Module Name: TBC_tb
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


module TBC_tb;

    reg sysclk;
    wire Q1,Q2,Q3;
    
    TBC uut(.sysclk(sysclk), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    
    always #5 sysclk = ~sysclk;
        
    initial begin
        sysclk = 0;
        #400;
        #10 $stop;
    end
        
endmodule
