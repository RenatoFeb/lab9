`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 12:06:34 PM
// Design Name: 
// Module Name: add4
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


module add4( inA, inB, out, carryIn, carryOut);

input [3:0] inA, inB;

output [3:0] out;


input carryIn;

output carryOut;

wire c1, c2, c3;

fa add0(inA[0], inB[0], carryIn, out[0], c1);

fa add1(inA[1], inB[1], c1, out[1], c2);

fa add2(inA[2], inB[2], c2, out[2], c3);

fa add3(inA[3], inB[3], c3, out[3], ccarryOut);

endmodule
