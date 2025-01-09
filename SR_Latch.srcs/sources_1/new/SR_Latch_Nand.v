`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 13:43:40
// Design Name: 
// Module Name: SR_Latch_Nand
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


module SR_Latch_Nand(input S,input R,input clk,output out1,output out2);
wire w1,w2,c1,c2;
nand(c1,S,clk);
nand(c2,R,clk);
nand(w1,c1,w2);
nand(w2,c2,w1);
assign out1=w1;
assign out2=w2;
endmodule
