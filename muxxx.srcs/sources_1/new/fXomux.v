`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 04:28:38
// Design Name: 
// Module Name: fXomux
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


module fXomux(input in1,
    input in2,
    input in3,
    input in4,
    input [1:0]E,
    output reg mux_out
    );
    always@(*)begin
        case(E)
            2'b00:mux_out=in1;
            2'b01:mux_out=in2;
            2'b10:mux_out=in3;
            2'b11:mux_out=in4;
        endcase
    end
endmodule
