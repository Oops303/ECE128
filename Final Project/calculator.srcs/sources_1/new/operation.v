`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 02:26:12 PM
// Design Name: 
// Module Name: operation
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


module operation(a, b, op, result);
input [3:0] a, b;
input [2:0] op;
output reg [7:0] result;

wire [3:0] add_out;
wire co;

wire [7:0] p;

wire [3:0] sub_out;

wire [3:0] div_out;

CLA add(a, b, 1'b0, add_out, co);
Subtraction sub(a, b, sub_out);
Combine_Multiplier multi(a, b, p);
Division div(a, b, div_out);

always @(*) begin
        case (op)
            3'b000: result <= {3'b0, co, add_out}; // adder
            3'b001: result <= {4'b0, sub_out};  //sub
            3'b010: result <= p;                // product
            3'b011: result <= {4'b0, div_out};  //division
            3'b100: result <= a & b;        // Bitwise AND
            3'b101: result <= a | b;        // Bitwise OR           
            3'b110: result <= a ^ b;        // Bitwise XOR
            3'b111: result <= ~a;           // Bitwise NOT (on a)
            default: result <= 8'b00000000;          // Default output
        endcase
    end

endmodule
