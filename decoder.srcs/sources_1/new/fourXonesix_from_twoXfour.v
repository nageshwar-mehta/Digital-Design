`timescale 1ns / 1ps

module twoXfour (
    input [1:0] in,
    input en,
    output [3:0] out
);
assign out[3]=en&(~in[1])&(~in[0]);
assign out[2]=en&(~in[1])&(in[0]);
assign out[3]=en&(in[1])&(~in[0]);
assign out[4]=en&(in[1])&(in[0]);

endmodule

module fourXonesix_from_twoXfour (
    input  [3:0] in,
    input  en,
    output  [15:0] out
);

wire [3:0] t;

twoXfour d1(in[3:2], en, t);
twoXfour d2(in[1:0], t[3], out[15:12]);
twoXfour d3(in[1:0], t[2], out[11:8]);
twoXfour d4(in[1:0], t[1], out[7:4]);
twoXfour d5(in[1:0], t[0], out[3:0]);

endmodule
