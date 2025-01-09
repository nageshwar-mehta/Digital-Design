`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 09:48:15
// Design Name: 
// Module Name: twoXfour_threeXeight
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

module twoXfour(input [1:0]d,input en,output reg [3:0]out);
    always@(en,d)begin
        if(en==1'b1)begin
            case(d)
            2'b00:out=4'b0001;
            2'b01:out=4'b0010;
            2'b10:out=4'b0100;
            2'b11:out=4'b1000;
            default:out=4'bzzz;
            endcase
        end
        else out=4'b0000;
    end
endmodule
module twoXfour_threeXeight(input [2:0]d,output [7:0]out);
twoXfour D1(d[2:1],d[0],out[7:4]);
twoXfour D2(d[2:1],~d[0],out[3:0]);
endmodule
