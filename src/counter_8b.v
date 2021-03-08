module counter_8b
(clk, rst, q, cout);
input        clk;
input        rst;
output       cout;
reg          cout;
output [7:0] q;
reg    [7:0] q;

always @(clk, rst)
begin
	if(rst==0) q = 0;
	else
	begin
		q = q + 1;
		if(q == 8'b11111111) cout <= 1;
		else cout <= 0;
	end
end
endmodule

