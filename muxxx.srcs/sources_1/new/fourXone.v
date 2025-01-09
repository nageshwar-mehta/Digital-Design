`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 14:39:08
// Design Name: 
// Module Name: fourXone
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 14:19:37
// Design Name: 
// Module Name: twoXone
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


module twoXone(in1,in2,a,out); 
input in1;
input in2;
input a;
output out;
assign out=(in1&(!a))|(in2&a);
endmodule
//module mux2(input inp,input enable,output outp);
//    twoXone(inp,enable,outp);
//endmodule


module fourXone(input in1,input in2,input in3,input in4,input A,input B,output out);
wire w1,w2;
twoXone m1(in1,in3,A,w1);
twoXone m2(in4,in2,!A,w2);
twoXone m3(w1,w2,B,out);
endmodule
