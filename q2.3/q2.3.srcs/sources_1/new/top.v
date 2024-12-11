`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 10:12:42 AM
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


module top();

always@(*)
    begin
        case(PS)
            S0_idle:begin
                partial_product <=
                shift_count <=
                multiplicand <=
                operand_bb <=
                NS = 
            end

            S1_multiply:begin
                NS = S2_update_result;
                if ((operand_bb[0]==0) && (shift_count < 4)) begin
                    partial_product <=
                    shift_count <=
                    multiplicand <=
                    operand_bb <=
                end
                else if ((operand_bb[0]==1) && (shift_count < 4)) begin
                    partial_product <=
                    shift_count <=
                    multiplicand <=
                    operand_bb <=
                end
            end

            S2_update_result:begin
                if ( shift_count ==4) begin
                    NS = 
                    product <=
                end
                else begin
                    NS = 
                end
            end

            S3_done:begin
                NS =
            end
        endcase

endmodule
