`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 09:26:20
// Design Name: 
// Module Name: encoder
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


module encoder(input [7:0]d,input en,output reg [2:0] out);
always@* begin
    if(en==1'b0)out=3'b000;
    else if(d==8'd1)out=3'b000;
    else if(d==8'd2)out=3'b001;
    else if(d==8'd4)out=3'b010;
    else if(d==8'd8)out=3'b011;
    else if(d==8'd16)out=3'b100;
    else if(d==8'd32)out=3'b101;
    else if(d==8'd64)out=3'b110;
    else if(d==8'd128)out=3'b111;
    else out=3'bzzz;
end
endmodule
