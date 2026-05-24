module D6(S, R, clk, Q, Qbar);

input S, R, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    Q <= S | ((~R) & Q);
end

endmodule