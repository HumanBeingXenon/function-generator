module mux41
(A, B, C, D, SEL, Q);
parameter S = 8;
input  [S-1:0] A;
input  [S-1:0] B;
input  [S-1:0] C;
input  [S-1:0] D;
input  [1:0]   SEL;
output [S-1:0] Q;
reg    [S-1:0] Q;

always @(SEL)
begin
	case(SEL)
		2'b00: Q <= A;
		2'b01: Q <= B;
		2'b10: Q <= C;
		2'b11: Q <= D;
	endcase
end
endmodule
