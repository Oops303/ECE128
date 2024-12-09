`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:11:46 PM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb;
reg i_clk, i_rst, i_write_en;
reg [2:0] i_addr;
reg [7:0] i_write_data;
wire [7:0] o_read_data;

RAM uut(i_clk, i_rst, i_write_en, i_addr, i_write_data, o_read_data);

initial begin
    i_clk = 0; 
    forever begin 
        #5 i_clk = ~i_clk;
    end 
end 

initial begin
    i_rst = 1;
    i_write_en = 0;
    i_addr = 0;
    i_write_data = 0;
    
    #10 i_rst = 0;
    
    i_write_en = 1; #10
    i_addr = 3'b000; i_write_data = 8'b000; #10 
    i_addr = 3'b001; i_write_data = 8'b001; #10 
    i_addr = 3'b010; i_write_data = 8'b010; #10 
    i_addr = 3'b011; i_write_data = 8'b011; #10 
    i_addr = 3'b100; i_write_data = 8'b100; #10 
    i_addr = 3'b101; i_write_data = 8'b101; #10 
    
    i_addr = 3'b000; i_write_data = 8'b0;
    
    i_write_en = 0; #5
    i_addr = 3'b000; #10
    i_addr = 3'b001; #10
    i_addr = 3'b010; #10
    i_addr = 3'b011; #10
    i_addr = 3'b100; #10
    i_addr = 3'b101; #10
    $stop;
end
endmodule
