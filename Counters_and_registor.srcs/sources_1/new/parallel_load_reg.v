`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2023 02:01:26
// Design Name: 
// Module Name: parallel_load_reg
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
module d_flip_flop(input d,input clk,output reg q);
//    assign q0=~q;
    always@(posedge clk)begin
    case(d)
        1'b0:q=1'b0;
        1'b1:q=1'b1;
    endcase 
    end
endmodule

module parallel_load_reg(input i0,input i1,input i2,input i3,input load,input clk ,output a0,output a1,a2,a3);
    d_flip_flop D0((~load&a0)|(i0&load),clk,a0);
    d_flip_flop D1((~load&a1)|(i1&load),clk,a1);
    d_flip_flop D2((~load&a2)|(i2&load),clk,a2);
    d_flip_flop D3((~load&a3)|(i3&load),clk,a3);
    
endmodule
