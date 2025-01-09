`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 20:31:48
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(input T,input clk,output reg out);

    always@(posedge clk)begin
        case(T)
             1'b0:out=out;
            1'b1:out=~out;
            default:out=0; 
        endcase
     end
     endmodule
//module T_flipflop(
//    input wire T,
//    input wire clk,
//    output reg Q
//);

//always @(posedge clk) begin
//    if (T) begin
//        Q <= ~Q; // Toggle Q when T is 1
//    end
//end

//endmodule
//module T_flipflop(
//  input wire T,        // Toggle input
//  input wire clk,      // Clock input
//  output reg Q         // Output
//);
//  always @(posedge clk) begin
//    if (T)  

//case(T)
//1'b0:Q=0;
//endcase
//  end

//endmodule
//endmodule
