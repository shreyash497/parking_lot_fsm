`timescale 1ns / 1ps

module parking_tb;

reg clk;
reg reset;
reg entry;
reg exit;

wire [3:0] slots;

// Instantiate DUT
parking_counter uut (
    .clk(clk),
    .reset(reset),
    .entry(entry),
    .exit(exit),
    .slots(slots)
);

// Clock generation (100 MHz ? 10ns period)
always #5 clk = ~clk;

initial begin
    // Initialize properly (VERY IMPORTANT)
    clk = 0;
    reset = 0;
    entry = 0;
    exit = 0;

    // Apply reset
    reset = 1; #20;
    reset = 0; #20;

    // Entry pulse
    entry = 1; #10;
    entry = 0; #20;

    // Entry again
    entry = 1; #10;
    entry = 0; #20;

    // Exit pulse
    exit = 1; #10;
    exit = 0; #20;

    // Multiple entry (test boundary)
    repeat(12) begin
        entry = 1; #10;
        entry = 0; #10;
    end

    // Multiple exit
    repeat(12) begin
        exit = 1; #10;
        exit = 0; #10;
    end

    #50;
    $finish;
end

endmodule