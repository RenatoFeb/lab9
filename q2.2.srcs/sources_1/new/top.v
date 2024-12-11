`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 12:24:41 PM
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
/////////////////////////////////////////////////////////////////////////////////


module top(input clk, input rst, input [3:0] a, input[3:0] b, output reg [7:0] product = 0, output reg rdy = 0);

parameter S0_idle = 2'b00 , S1_multiply = 2'b01 , S2_update_result = 2'b10, S3_done= 2'b11;

reg [2:0] shift_count = 0;

reg [1:0] CS = 2'b00,NS = 2'b01;

reg [7:0] multiplicand = 0, partial_product = 0;

reg [3:0] operand_bb = 0;

always @(posedge clk)
begin

 if(CS == 2'b11) 
    rdy <= 1'b1;

 if(rst == 1'b1) begin
 CS <= 2'b00;
 end else begin 
 CS <= NS;   
    end
end 

always@(posedge clk)
    begin
        case(CS)
            S0_idle:begin
                partial_product <= 0;
                shift_count <= 0;
                multiplicand  <= b;
                operand_bb  <= a;
                NS = 2'b01;
                product <= 0;
                rdy = 0;
            end

            S1_multiply:begin
                NS = 2'b10;
                if ((operand_bb[0]==0) && (shift_count < 4)) begin
                    partial_product  <= partial_product;
                    shift_count  <= shift_count + 1;
                    multiplicand <= multiplicand << 1;
                    operand_bb <= operand_bb >> 1;
                end
                else if ((operand_bb[0]==1) && (shift_count < 4)) begin
                    partial_product <= partial_product + multiplicand;
                    shift_count  <= shift_count + 1;
                    multiplicand <= multiplicand << 1;
                    operand_bb <= operand_bb >> 1;
                end
            end

            S2_update_result:
            begin
                if ( shift_count == 4) begin
                    NS = 2'b11;
                    product  <= partial_product;
                end
                else
                begin
                    NS = 2'b01;
                end
            end

            S3_done:begin
                NS = 2'b00;
            end
        endcase
end


   
endmodule
