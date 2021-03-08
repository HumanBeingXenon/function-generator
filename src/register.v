module register
(clk, rst, D, Q);
parameter S = 8;

input          clk;
input          rst;
input  [S-1:0] D;
output [S-1:0] Q;
reg    [S-1:0] Q;

always @(posedge clk or negedge rst)
begin
	if (!rst) Q <= 0;
	else Q <= D;
end
endmodule
