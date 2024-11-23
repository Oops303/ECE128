`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 01:58:50 PM
// Design Name: 
// Module Name: Up_counter
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


module Up_counter(clk, reset, count, en);
    input clk;
    input reset;
    output reg [11:0]count;
    output reg en;
    always @(posedge clk or reset) begin 
        if (reset)begin
            count <=12'b0;
            en <= 1'b0;
        end
        
        else begin 
            if (count < 12'd4095) begin//decimal
                count <= count + 1;
                en <= 1'b1;
            end
            else begin
                en <= 1'b0;
            end
        end
    end
endmodule
