`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 01:04:22 PM
// Design Name: 
// Module Name: tb
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


module tb();

 reg b0, b1, b2, b3, a0, a1, a2, a3;
 wire [7:0] out;
 

 
 top test( b0, b1, b2, b3, a0, a1, a2, a3, out);
 

initial begin

    #1 b0 = 1'b0; b1 = 1'b0; b2 = 1'b0; b3 = 1'b0; a0 = 1'b0; a1 = 1'b0; a2 = 1'b0; a3 = 1'b0;
    #1 b0 = 1'b1; b1 = 1'b0; b2 = 1'b0; b3 = 1'b0; a0 = 1'b1; a1 = 1'b0; a2 = 1'b0; a3 = 1'b0;
    #1 b0 = 1'b1; b1 = 1'b0; b2 = 1'b0; b3 = 1'b0; a0 = 1'b1; a1 = 1'b1; a2 = 1'b0; a3 = 1'b0;
    #1 b0 = 1'b0; b1 = 1'b1; b2 = 1'b0; b3 = 1'b0; a0 = 1'b1; a1 = 1'b0; a2 = 1'b1; a3 = 1'b0;
    #1 b0 = 1'b1; b1 = 1'b1; b2 = 1'b0; b3 = 1'b0; a0 = 1'b0; a1 = 1'b1; a2 = 1'b1; a3 = 1'b0;
    #1 b0 = 1'b1; b1 = 1'b0; b2 = 1'b1; b3 = 1'b0; a0 = 1'b0; a1 = 1'b0; a2 = 1'b1; a3 = 1'b1;
    #1 b0 = 1'b0; b1 = 1'b1; b2 = 1'b1; b3 = 1'b0; a0 = 1'b1; a1 = 1'b0; a2 = 1'b0; a3 = 1'b1;
    #1 b0 = 1'b1; b1 = 1'b1; b2 = 1'b1; b3 = 1'b0; a0 = 1'b1; a1 = 1'b1; a2 = 1'b0; a3 = 1'b1;
    #1 b0 = 1'b1; b1 = 1'b1; b2 = 1'b1; b3 = 1'b1; a0 = 1'b1; a1 = 1'b1; a2 = 1'b1; a3 = 1'b1;

end


endmodule
