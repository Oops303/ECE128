`timescale 1ns / 1ps
module Seq_multiplier(
    input clk,
    input rst,
    input [3:0] multiplicand,
    input [3:0] multiplier,
    output reg [7:0] product
);

// Define states
parameter S0_idle = 0, S1_multiply = 1, S2_update_result = 2, S3_done = 3;
reg [2:0] CS, NS;
reg [7:0] partial_product;
reg [3:0] shift_count;
reg [3:0] operand_aa, operand_bb;

// State register and reset logic
always @(posedge clk or posedge rst) begin
    if (rst) begin
        CS <= S0_idle;
        partial_product <= 8'b0;
        shift_count <= 4'b0;
        operand_aa <= multiplicand;
        operand_bb <= multiplier;
        product <= 8'b0;
    end else begin
        CS <= NS;
        case (CS)
            S0_idle: begin
                partial_product <= 8'b0;
                shift_count <= 4'b0;
                operand_aa <= multiplicand;
                operand_bb <= multiplier;
            end
            
            S1_multiply: begin
                if (operand_bb[0] == 1'b1) begin
                    partial_product <= partial_product + (operand_aa << shift_count);
                end
                operand_bb <= operand_bb >> 1;
                shift_count <= shift_count + 1;
            end
            
            S2_update_result: begin
                if (shift_count == 4) begin
                    product <= partial_product;
                end
            end
            
            S3_done: begin
                // Do nothing, remain in this state until reset
            end
        endcase
    end
end

// State transition logic
always @(*) begin
    NS = CS;
    case (CS)
        S0_idle: NS = S1_multiply;
        S1_multiply: NS = (shift_count < 4) ? S2_update_result : S3_done;
        S2_update_result: NS = (shift_count == 4) ? S3_done : S1_multiply;
        S3_done: NS = S0_idle;
    endcase
end

endmodule

