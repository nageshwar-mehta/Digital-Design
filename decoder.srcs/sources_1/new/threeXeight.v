`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 09:11:55
// Design Name: 
// Module Name: threeXeight
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


module threeXeight(input [2:0]d
                   ,input en,
                   output [7:0]out);
assign out[0]=en&(~d[0]&~d[1]&~d[2]);
assign out[1]=en&(~d[0]&~d[1]&d[2]);
assign out[2]=en&(~d[0]&d[1]&~d[2]);
assign out[3]=en&(~d[0]&d[1]&d[2]);
assign out[4]=en&(d[0]&~d[1]&~d[2]);
assign out[5]=en&(d[0]&~d[1]&d[2]);
assign out[6]=en&(d[0]&d[1]&~d[2]);
assign out[7]=en&(d[0]&d[1]&d[2]);
endmodule
