`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 04:54:17
// Design Name: 
// Module Name: prioritty_encoder
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


module prioritty_encoder(input wire [7:0]in,
    input wire E,
    output reg [2:0]out
    );
    always@(E,in)begin
        if(E==1)begin
            if(in[7]==1)out=3'b111;
            else if(in[6]==1)out=3'b110;
            else if(in[5]==1)out=3'b101;
            else if(in[4]==1)out=3'b100;
            else if(in[3]==1)out=3'b011;
            else if(in[2]==1)out=3'b010;
            else if(in[1]==1)out=3'b001;
            else out=3'b000;
        end
        else out=3'bzzz;   
    end
endmodule
