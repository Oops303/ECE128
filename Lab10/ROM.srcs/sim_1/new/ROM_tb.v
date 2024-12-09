`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:43:46 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb;
reg [2:0] ROM_addr;
wire [3:0] ROM_data;

ROM uut(ROM_data, ROM_addr);

initial begin
    ROM_addr = 3'd0; #10
    ROM_addr = 3'd1; #10
    ROM_addr = 3'd2; #10
    ROM_addr = 3'd3; #10
    ROM_addr = 3'd4; #10
    ROM_addr = 3'd5; #10
    ROM_addr = 3'd6; #10
    ROM_addr = 3'd7; #10
    
    $stop;
end

endmodule
