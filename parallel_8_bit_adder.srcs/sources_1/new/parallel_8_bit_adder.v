
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NaViK
// Engineer: Nagesh____
// 
// Create Date: 20.09.2023 14:41:54
// Design Name: 
// Module Name: parallel_8_bit_adder
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
    );
    wire t1,t2,t3;
    xor (t1,in1,in2);
    and (t2,in1,in2);
    xor (sumout,in3,t1);
    and (t3,in3,t1);
    or  (carry,t3,t2);
endmodule
module half_adder(input in1,
    input in2,
    output sum,
    output carry);
//    xor(sum,in1,in2);
//    and(carry,in1,in2);
    assign sum=in1^in2;
    assign carry=in1&in2;
endmodule

module parallel_4_bit_adder(x,y,cin,s,c);
    input [3:0]x;input [3:0]y;output [3:0]s;output c;input cin;
    wire c0,c1,c2,c3;
//    assign cin=0;
    full_adder S0(x[0],y[0],cin,s[0],c0);
    full_adder S1(x[1],y[1],c0,s[1],c1);
    full_adder S2(x[2],y[2],c1,s[2],c2);
    full_adder S3(x[3],y[3],c2,s[3],c3);
    assign c=c3;

endmodule

module parallel_8_bit_adder(x,y,cin,s,c);
    input [7:0]x;input [7:0]y;output [7:0]s;output c;input cin;
    wire c1,c2;
    parallel_4_bit_adder S0(x[3:0],y[3:0],cin,s[3:0],c1);
    parallel_4_bit_adder S4(x[7:4],y[7:4],c1,s[7:4],c2);
    assign c=c2;
    
    
endmodule
