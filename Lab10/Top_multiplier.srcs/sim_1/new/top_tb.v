`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:49:51 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb;

// Declare inputs as reg and outputs as wire
reg clk;
reg rst;
reg [2:0] adr1;
reg [2:0] adr2;
reg [2:0] adr_ram;
wire [7:0] result;

// Instantiate the top module
top uut (
    .clk(clk),
    .rst(rst),
    .adr1(adr1),
    .adr2(adr2),
    .adr_ram(adr_ram),
    .result(result)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
end

// Stimulus process
initial begin
    // Initialize inputs
    rst = 1;
    adr1 = 3'b000;
    adr2 = 3'b000;
    adr_ram = 3'b000;

    // Apply reset
    #10 rst = 0; // Deassert reset after 10ns
    
    // Test case 1
    
    #100 adr1 = 3'b001; adr2 = 3'b010;
    #10 rst = 1;
    #10 rst = 0;
    
    // Test case 2
    #100 adr1 = 3'b011; adr2 = 3'b100;
    #10 rst = 1;
    #10 rst = 0;
    
    // Test case 3
    #100 adr1 = 3'b111; adr2 = 3'b000;
    #10 rst = 1;
    #10 rst = 0;
    
    // Test case 4
    #100 adr1 = 3'b101; adr2 = 3'b110;
    #10 rst = 1;
    #10 rst = 0;
    
    // End simulation
    #10 $stop;
end


endmodule

