`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:45:26 PM
// Design Name: 
// Module Name: Display_mux
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


module Display_mux(i0,i1,i2,i3,s,seg);
    input[1:0] i0,i1,i2,i3,s;
    output reg [6:0]seg;
    
    wire[1:0] n1;
    wire[3:0] n4;

    Mux_4_to_1 mux_41(n1,i0,i1,i2,i3,s);

assign n4 = {2'b0, n1};
always @(n4)
begin
    case(n4)
        4'b0000: seg = 7'b1000000;
        4'b0001: seg = 7'b1111001;
        4'b0010: seg = 7'b0100100;
        4'b0011: seg = 7'b0110000;
        default: seg = 7'bx;
    endcase

end
endmodule
