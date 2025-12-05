module flipflop (
    input clk,
    input d,
    input sleep,         // MTCMOS sleep signal
    output reg q
);

wire pulse;

// C-element generates pulse only when needed
celement U1 (.a(clk), .b(~sleep), .y(pulse));

always @(posedge pulse) begin
    if (!sleep)
        q <= d;          // Normal operation
    else
        q <= q;          // Hold value in sleep mode (low leakage)
end

endmodule
