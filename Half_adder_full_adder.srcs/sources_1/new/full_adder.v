`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 14:29:18
// Design Name: 
// Module Name: full_adder
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


module full_adder(input in1,
    input in2,
    input in3,
    output sumout,
    output carry
//    output out1,
//    output out2,
//    output out3
    );
    
    wire t1,t2,t3;
//    xor (t1,in1,in2);
//    and (t2,in1,in2);
//    xor (sumout,in3,t1);
//    and (t3,in3,t1);
//    or  (carry,t3,t2);
  assign t1=in1^in2;
  assign t2=in1&in2;
  assign sumout=(in3^t1);
  assign t3=in3&t1;
  assign carry = t3|t2;
  
endmodule
