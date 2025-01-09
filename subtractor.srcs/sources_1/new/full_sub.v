`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2023 13:40:32
// Design Name: 
// Module Name: full_sub
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


module full_sub(input A,input B,input Bin,output D,output Bout);
//    xor(D,A,B,Bin); 
        
//    assign Bout=!A&(Bin|B)|(B&Bin);
//    assign Bout=(!A&Bin)|(!A&B)|(B&Bin);
    assign Bout=!A&(B^Bin)|(B&Bin);    
endmodule
