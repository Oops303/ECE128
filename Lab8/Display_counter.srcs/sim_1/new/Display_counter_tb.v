`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/23 08:08:14
// Design Name: 
// Module Name: Display_counter_tb
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

module Display_counter_tb;

    // Inputs
    reg clk;

    // Outputs
    wire [6:0] seg;
    wire [3:0] an;

    // Internal signals for debugging
    wire [15:0] stat_bcd;
    wire [11:0] bin_d_in;
    wire [15:0] bcd_d_out;
    wire clock_out;
    wire rdy;
    wire en;

    // Instantiate the Unit Under Test (UUT)
    Display_counter uut (
        .clk(clk),
        .seg(seg),
        .an(an)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Generate a clock signal with a period of 10ns (100 MHz clock)
    end

    // Simulation control
    initial begin
       

        // Simulation runtime
        #20000;  // Run for a sufficient time to observe results

        $stop;  // End the simulation
    end

endmodule

