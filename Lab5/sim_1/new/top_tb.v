`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2024 06:03:58 PM
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
reg clk;
reg [15:0] sw;
wire [3:0] an;
wire [6:0] seg;
 
top uut(clk, sw, an, seg);

always begin
    #1 clk = ~clk;
end 


initial begin
    clk = 0;

    //test first digit
    sw = 16'b0010_0000_0000_0000;
    
    #256 sw = 16'b0000_0000_0000_0001;

    #256 sw = 16'b0000_0000_0010_0000;

    #256 sw = 16'b0000_0101_0000_0000;
    
    
    #256 $stop;

    

end

endmodule
