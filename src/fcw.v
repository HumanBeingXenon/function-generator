module fcw
(sel, q);
parameter S = 10;
input [1:0] sel;
output [S-1:0] q;
reg [S-1:0] q;

always @(sel)
begin
	case(sel)
		2'b00: q <= 1;
		2'b01: q <= 2;
		2'b10: q <= 4;
		2'b11: q <= 8;
		default: q <= 1;
	endcase
end
endmodule