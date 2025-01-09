`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2023 02:23:24
// Design Name: 
// Module Name: shift_reg
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

//module d_flip_flop(input d,input clk,output reg q);
////    assign q0=~q;
//    always@(posedge clk)begin
//    case(d)
//        1'b0:q=1'b0;
//        1'b1:q=1'b1;
//    endcase 
//    end
//endmodule

module shift_reg(input si,input clk,output so);
    wire t1,t2,t3,t4;
    d_flip_flop d0(si,clk,t1);
    d_flip_flop d1(t1,clk,t2);
    d_flip_flop d2(t2,clk,t3);
    d_flip_flop d3(t3,clk,so);
    
endmodule
