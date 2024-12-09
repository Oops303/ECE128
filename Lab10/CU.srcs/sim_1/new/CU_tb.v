`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 03:22:45 PM
// Design Name: 
// Module Name: CU_tb
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


module CU_tb;
reg clk, reset;
reg [2:0] adr1;
reg [2:0] adr2;
wire w_rf;
wire [2:0] adr;
wire DA, SA, SB;
wire [2:0] st_out;
wire [2:0] w_ram;

CU uut(clk, reset, adr1, adr2, w_rf, adr, DA, SA, SB, st_out, w_ram);

initial begin
    clk = 0; 
    forever begin 
        #5 clk = ~clk;
    end 
end 
    
initial begin
    clk = 0;
    reset = 0;
    adr1 = 3'd0; adr2 = 3'd1;
    reset = 1; #10
    reset = 0;
    
    #100;
    
    reset = 1; #10
    reset = 0;
    
    #50
    

    $stop;
end

endmodule
