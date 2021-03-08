module accumulator
(clk, fcw, prev, sum);
parameter S = 10;

input          clk;
input  [S-1:0] fcw;
input  [S-1:0] prev;
output [S-1:0] sum;
reg    [S-1:0] sum;

always @(posedge clk)
begin
	sum <= prev + fcw;
end
endmodule
