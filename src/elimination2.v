module elimination2
(clk, in, out);
input      clk;
input      in;
output reg out;
reg        clk100;
integer    cnt, kl, kh;

always @(posedge clk)
begin
	if(cnt<250000)
		cnt = cnt + 1;
	else
	begin
		cnt = 0;
		clk100 <= !clk100;
	end
end

always @(posedge clk100)
begin
	if(!in)
	begin
		kh = 0;
		if(kl >= 7)
		begin
			kl = kl;
			out <= 0;
		end
		else
		begin
			kl = kl + 1;
		end
	end
	else
	begin
		kl = 0;
		if(kh >= 7)
		begin
			kh = kh;
			out <= 1;
		end
		else
		begin
			kh = kh + 1;
		end
	end
end

endmodule