`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2023 01:14:32
// Design Name: 
// Module Name: half_sub_inbuilt
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


module half_sub_inbuilt(input A,
    input B,
    output D, 
    output B0
    );
//    assign D=A^B;
//    assign B0=!A&&B;
    xor(D,A,B);
    and(B0,!A,B);
endmodule
