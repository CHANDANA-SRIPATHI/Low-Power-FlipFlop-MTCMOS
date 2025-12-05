module celement(
    input a,
    input b,
    output reg y
);

always @(*) begin
    if (a == 1'b1 && b == 1'b1)
        y = 1'b1;
    else if (a == 1'b0 && b == 1'b0)
        y = 1'b0;
    else
        y = y;  // Hold previous state
end

endmodule
