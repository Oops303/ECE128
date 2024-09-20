`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: Mux_8_to_1_tb
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

`timescale 1ns/1ps
module Mux_8_to_1_tb;
wire y; //output 
reg a,b,c,d,e,f,g,h,s0,s1,s2; //input
 
// Instantiate original module (named DUT {device under test}) 
Mux_8_to_1 uut (a,b,c,d,e,f,g,h,s0,s1,s2,y);

initial begin 
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b0;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b0;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b1;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b1;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b0;s2=1'b1;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b0;s2=1'b1;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b1;s2=1'b1;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b1;s2=1'b1;
    
    
	#10 a=1'b0;b=1'b1;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b0;s2=1'b0;
	
	
	#10 a=1'b0;b=1'b0;c=1'b1;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b1;s2=1'b0;
	
	
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b0;g=1'b0;h=1'b0; s0=1'b1;s1=1'b1;s2=1'b0;
	
	
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b1;f=1'b0;g=1'b0;h=1'b0; s0=1'b0;s1=1'b0;s2=1'b1;
	
	
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b1;g=1'b0;h=1'b0; s0=1'b1;s1=1'b0;s2=1'b1;
	
	
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b1;h=1'b0; s0=1'b0;s1=1'b1;s2=1'b1;
	
	
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b0;s1=1'b0;s2=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b1;s1=1'b0;s2=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b0;s1=1'b1;s2=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b1;s1=1'b1;s2=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b0;s1=1'b0;s2=1'b1;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b1;s1=1'b0;s2=1'b1;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b0;s1=1'b1;s2=1'b1;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;e=1'b0;f=1'b0;g=1'b0;h=1'b1; s0=1'b1;s1=1'b1;s2=1'b1;

	#10 $stop;

end 
endmodule
