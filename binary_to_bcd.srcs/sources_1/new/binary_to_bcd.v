
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

module binary_to_bcd(x,y,cin,s,c);
    input [3:0]x,y;input cin;output [3:0]s;output c;
    wire [3:0]z;wire k;
    parallel_4_bit_adder A(x[3:0],y[3:0],cin,z[3:0],k);
    assign c=(k|(z[3]&z[2])|(z[1]&z[3]));
    wire [3:0]six_zero;
    assign six_zero[3]=0;assign six_zero[0]=0;
    assign six_zero[2]=c;assign six_zero[1]=c;
    wire i;
    parallel_4_bit_adder B(z[3:0],six_zero[3:0],0,s[3:0],i);
    
endmodule
