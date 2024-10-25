`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:54:49 PM
// Design Name: 
// Module Name: sw_Debouncer
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


module sw_Debouncer(
input RAW, clk,
output reg CLEAN
    );
    reg [2:0] counter;
    wire TC;
    
    always @ (posedge clk) begin
        if (~RAW)
            counter <=3'b000;
        else
            counter <= counter +3'b001;
        end
     assign TC = (counter == 3'b111);
     
     always @ (posedge clk) begin
        if(~RAW)      
            CLEAN <=1'b0;
        else if (TC)
            CLEAN <= 1'b1;
        end
endmodule
