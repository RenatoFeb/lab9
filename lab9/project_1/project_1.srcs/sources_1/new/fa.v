`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 12:05:10 PM
// Design Name: 
// Module Name: fa
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


module fa( A,B,CI, SUM, CO);

input A, B, CI;

output SUM, CO;

wire sum0, out1, out2;


xor(sum0, A, B);

xor(SUM, CI, sum0);

and(out1, A, B);

and(out2, sum0, CI);

or(CO, out2, out1);


endmodule