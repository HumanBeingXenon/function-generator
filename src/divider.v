module divider
(clk, clkout);
input  clk;
output clkout;
reg    clkout;
parameter N = 1000;
integer cnt;

always @(posedge clk)
begin
	if(cnt<N)
	begin
		cnt = cnt + 1;
	end
	else
	begin
		cnt = 0;
		clkout <= !clkout;
	end
end
endmodule
