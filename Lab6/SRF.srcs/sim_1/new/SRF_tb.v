`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:20:31 PM
// Design Name: 
// Module Name: SRF_tb
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


module SRF_tb();
    reg r, s, clk;
    wire q, qbar;
    
    SRF DUT(.S(s), .R(r), .clk(clk), .Q(q), .Qbar(qbar));
    
    initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
    initial begin
            s=1; r=0;
            #20; s=0; r=1;
            #20; s=0;r=0;
            #20; s=1;r=1;
            #20;
            $stop;
        end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end
endmodule

