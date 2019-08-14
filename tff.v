module tff(d,clk,reset,q);
input d, clk, reset;
output q;
reg q;

initial
begin q=1'b0 ; 
end 
always@(posedge clk or posedge reset)
	if(reset)
 		q <= 1'b0;
	else if(d)
		q <= ~q;

endmodule
