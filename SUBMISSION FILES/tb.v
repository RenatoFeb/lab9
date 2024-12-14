`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 12:47:12 PM
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

module tb;

  reg [3:0] a = 0, b = 0;
  reg rst = 0, clk = 0;
  wire [7:0] out;
  wire rdy;

  top invConv (
    .a(a),
    .b(b),
    .rst(rst),
    .clk(clk),
    .product(product)
  );

  initial begin
    forever #1 clk = ~clk;
  end

  initial begin
  
  a = 3;
  b = 6;
  
  rst = 1;
  #2
  

  rst = 0;

    
    

    #30;
    a = 4'b0011; // 3
    b = 4'b0101; // 5

    #30;
    a = 4'b1111; // 15
    b = 4'b0001; // 1

    #30;
    a = 4'b1010; // 10
    b = 4'b0100; // 4
  end

endmodule
