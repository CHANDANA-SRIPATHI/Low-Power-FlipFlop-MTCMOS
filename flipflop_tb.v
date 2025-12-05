module flipflop_tb;

reg clk, d, sleep;
wire q;

flipflop uut (.clk(clk), .d(d), .sleep(sleep), .q(q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Initial values
    sleep = 0; d = 0; #10;

    d = 1; #10;
    d = 0; #10;

    sleep = 1;  // Enter low power mode
    d = 1; #20;

    sleep = 0;  // Exit low power mode
    d = 1; #10;

    $stop;
end

endmodule
