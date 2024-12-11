`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 11:29:19 AM
// Design Name: 
// Module Name: intConv
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


module intConv( a, b, rst, clk, product );

  input [3:0] a = 0, b = 0;
  input rst = 0, clk = 0;
  
  wire rdy;
  wire [7:0] out;
  
  output reg [7:0] product;
  
  top uut (
    .a(a),
    .b(b),
    .product(out),
    .rst(rst),
    .clk(clk),
    .rdy(rdy)
  );
  
  always@(product) begin 
  
  if (out != 0) begin
    product = out;
  end
  
  end
  
  
  


    
endmodule
