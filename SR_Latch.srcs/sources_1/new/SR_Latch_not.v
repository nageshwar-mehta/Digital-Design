`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 13:30:11
// Design Name: 
// Module Name: SR_Latch_not
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


module SR_Latch_not(input inp1,output out1,output out2);
wire w1,w2; 
//assign w2=inp1;
//assign w1=!inp1;
//assign w2=!w1;
//assign out2=w2;
//assign out1=w1;
not(w1,w2);
not(w2,w1);
assign w1=out1;
assign w2=out2;
assign w1=inp1;


endmodule
