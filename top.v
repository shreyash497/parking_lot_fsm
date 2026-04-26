`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2026 15:27:07
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input btnU,
    input btnD,
    input btnC,
    output [6:0] seg,
    output [3:0] an
);

wire [3:0] slots;

parking_counter pc(
    .clk(clk),
    .reset(btnC),
    .entry(btnU),
    .exit(btnD),
    .slots(slots)
);

seven_seg ss(
    .num(slots),
    .seg(seg)
);

assign an = 4'b1110; // only 1 digit ON

endmodule
