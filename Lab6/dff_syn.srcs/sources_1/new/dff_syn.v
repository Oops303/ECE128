`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:45:22 PM
// Design Name: 
// Module Name: dff_syn
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


module dff_syn(
    input d, rstn, clk,
    output reg q
);

    always @ (posedge clk)
        if(!rstn)
            q <= 0;
        else
            q <= d;
    
endmodule
