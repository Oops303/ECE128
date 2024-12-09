`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 03:55:54 PM
// Design Name: 
// Module Name: top
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


module top(clk, rst, adr1, adr2, adr_ram, result);
input clk, rst;
input [2:0] adr1;
input [2:0] adr2;
input [2:0] adr_ram; 
output [7:0] result;

wire [2:0] adr_ram;
wire rw=1'b1;
wire [2:0]rom_adr;
wire [2:0] st_out;

wire w_rf;
wire [2:0] w_ram;
wire DA, SA, SB;


wire [3:0] a;
wire [3:0] b;
wire [7:0] product;

wire [3:0] rom_data;

ROM uut1(rom_data, rom_adr);
CU uut4(clk, rst, adr1, adr2, w_rf, rom_adr, DA, SA, SB, st_out, w_ram);
RF uut5(a, b, SA, SB, rom_data, DA, w_rf, rst, clk);
Combine_Multiplier uut2(a, b, product);
RAM uut3(clk, rst, w_ram, adr_ram, product, result);






endmodule
