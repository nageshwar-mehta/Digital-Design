`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2023 14:41:54
// Design Name: 
// Module Name: parallel_adder
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


module parallel_4_bit_adder2(x,y,cin,sumout,carry);
    input [3:0]x;input [3:0]y;output [3:0]sumout;output carry;input cin;
    wire c0,c1,c2,c3;
    full_adder S0(x[0],y[0],cin,sumout[0],c0);
    full_adder S1(x[1],y[1],c0,sumout[1],c1);
    full_adder S2(x[2],y[2],c1,sumout[2],c2);
    full_adder S3(x[3],y[3],c2,sumout[3],c3);
    assign carry=c3;

endmodule
