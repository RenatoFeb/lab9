`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:41:17 AM
// Design Name: 
// Module Name: top
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


module top(b0, b1, b2, b3, a0, a1, a2, a3, out);

input b0, b1, b2, b3, a0, a1, a2, a3;

output [7:0] out;

wire [7:0] pp1, pp2, pp3, pp4;
 wire [7:0] sum1, sum2;

wire b0a3, b0a2, b0a1, b0a0, b1a3, b1a2, b1a1, b1a0, b2a3, b2a2, b2a1, b2a0, b3a3, b3a2, b3a1, b3a0;

and(b0a3, b0, a3); 
and(b0a2, b0, a2); 
and(b0a1, b0, a1); 
and(b0a0, b0, a0); 
and(b1a3, b1, a3); 
and(b1a2, b1, a2); 
and(b1a1, b1, a1); 
and(b1a0, b1, a0); 
and(b2a3, b2, a3); 
and(b2a2, b2, a2); 
and(b2a1, b2, a1); 
and(b2a0, b2, a0); 
and(b3a3, b3, a3); 
and(b3a2, b3, a2); 
and(b3a1, b3, a1); 
and(b3a0, b3, a0);

assign pp1 = {4'b0000, b0a3, b0a2, b0a1, b0a0, 1'b0};

assign pp2 = {3'b000, b1a3, b1a2, b1a1, b1a0, 2'b00};

assign pp3 = {2'b00, b2a3, b2a2, b2a1, b2a0, 3'b000};

assign pp4 = {1'b0, b3a3, b3a2, b3a1, b3a0, 4'b0000};

 assign sum1 = pp1 + pp2;  
 assign sum2 = sum1 + pp3;     
 assign out = sum2 + pp4;      

endmodule
