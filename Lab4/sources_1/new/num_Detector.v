`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 01:58:51 PM
// Design Name: 
// Module Name: num_Detector
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


module num_Detector(i, out2, out3, out4, out5, outAll);
    input[4:0] i;
    output out2, out3, out4, out5, outAll;
    
    assign out2 = (i == 5'b00010 || i == 5'b00100 || i == 5'b00110 || i == 5'b01000 || i == 5'b01010 || i == 5'b01100 || i == 5'b01110 || 
    i == 5'b10000 || i == 5'b10010 || i == 5'b10100 || i == 5'b10110 || i == 5'b11000 || i == 5'b11010 || i == 5'b11100 || i == 5'b11110);
    
    assign out3 = (i == 5'b00011 || i == 5'b00110 || i == 5'b01001 || i == 5'b01100 || i == 5'b01111 || i == 5'b10010 || i == 5'b10101 || 
    i == 5'b11000 || i == 5'b11011 || i == 5'b11110);
    
    assign out4 = (i == 5'b00100 || i == 5'b01000 || i == 5'b01100 || i == 5'b10000 || i == 5'b10100 || i == 5'b11000 || i == 5'b11100);
    
    assign out5 = (i == 5'b00101 || i == 5'b01010 || i == 5'b01111 || i == 5'b10100 || i == 5'b11001 || i == 5'b11110);
    
    assign outAll = (i == 5'b11110);
    
            
endmodule


//always@(*)
//begin
//    if (dec % 2 == 0)
//        out2 = 1;
//    
//    if (dec % 3 == 0)
//        out3 = 1;
//    
//    if (dec % 4 == 0)
//        out4 = 1;
//    
//    if (dec % 5 == 0)
//        out5 = 1;
//    
//    if (dec % 2 == 0 | dec % 3 == 0 | dec % 5 == 0)
//        outAll = 1;
//end