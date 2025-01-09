`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 01:52:26
// Design Name: 
// Module Name: SR_Latch_NOR
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


module SR_Latch_NOR(
    input R,
    input S,
    output Q,
    output notQ
    );
    wire t1,t2;
    nor(t2,t1,R); 
    nor(t1,t2,S);
    assign Q=t2;
    assign notQ=t1;
    
endmodule
