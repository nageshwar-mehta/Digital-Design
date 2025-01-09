`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 07:16:27
// Design Name: 
// Module Name: p_e2
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


module p_e2(input [3:0]in,
            output reg [1:0]out
            );
always@* begin
    if(in[0]==1'b1)out=2'b11;
    else if(in[1]==1'b1)out=2'b10;
    else if(in[2]==1'b1)out=2'b01;
    else if(in[3]==1'b1)out=2'b00;
    else out=2'bxx;
end            
endmodule
