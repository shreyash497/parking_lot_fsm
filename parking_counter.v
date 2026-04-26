`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2026 15:25:13
// Design Name: 
// Module Name: parking_counter
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


module parking_counter(
    input clk,
    input reset,
    input entry,
    input exit,
    output reg [3:0] slots
);

parameter MAX = 9;

always @(posedge clk or posedge reset) begin
    if(reset)
        slots <= MAX;
    else begin
        if(entry && slots > 0)
            slots <= slots - 1;
        else if(exit && slots < MAX)
            slots <= slots + 1;
    end
end

endmodule
