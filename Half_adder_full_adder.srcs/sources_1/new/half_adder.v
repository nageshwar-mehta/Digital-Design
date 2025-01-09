`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 14:11:25
// Design Name: 
// Module Name: half_adder
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


module half_adder(input in1,
    input in2,
    output sum,
    output carry);
//    xor(sum,in1,in2);
//    and(carry,in1,in2);
    assign sum=in1^in2;
    assign carry=in1&in2;
endmodule
