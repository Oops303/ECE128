`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 03:46:43 PM
// Design Name: 
// Module Name: FA_1
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


module FA_1(input a, b, ci, output sum, co);
    //wire n1, n2, n3;
    //wire xor1;
    //xor(xor1, a, b);
    //xor(sum, xor1, ci);
    //and(n1, b, ci);
    //and(n2, a, ci);
    //and(n3, a, b);
    //or(co, n1, n2, n3);
    
    assign sum = a^b^ci;
    assign co = b&ci|a&ci|a&b;
    
endmodule
