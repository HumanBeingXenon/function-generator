module counter_4b
(clk, q);
input        clk;
output [1:0] q;
reg    [1:0] q;

always @(negedge clk)
begin
    q <= q + 1;
end
endmodule

