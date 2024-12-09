`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:21:38 PM
// Design Name: 
// Module Name: Division
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


module Division (
    input [3:0] a,         // Dividend
    input [3:0] b,         // Divisor
    output reg [3:0] quotient, // Quotient
    output reg [3:0] remainder // Remainder
);
    integer i; // Loop variable for long division

    always @(*) begin
        // Initialize quotient and remainder
        quotient = 4'b0000;
        remainder = 4'b0000;

        // Check for division by zero
        if (b == 0) begin
            quotient = 4'b1111; // Indicate undefined result
            remainder = 4'b0000;
        end else begin
            // Perform long division
            for (i = 3; i >= 0; i = i - 1) begin
                // Shift remainder left by 1 and bring down the next bit of the dividend
                remainder = (remainder << 1) | a[i];
                if (remainder >= b) begin
                    remainder = remainder - b; // Subtract divisor from remainder
                    quotient[i] = 1;           // Set the corresponding quotient bit
                end
            end
        end
    end


endmodule
