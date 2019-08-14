`include "tff.v"

module tff_tb;
reg d, clk, reset;
wire q;

initial
	begin
$dumpfile("tff_tb.vcd");
$dumpvars(0,tff_tb);
end

tff d1(d, clk, reset, q);


initial
begin
reset=0;
clk =0;
d=0;
end

always 
#5  clk =  ! clk; 

  always #10 d=~d;
/*
initial
begin
#5 reset =1'b0;
d=0;
#5 d = 1'b1;

end
*/

always@(posedge clk)
	begin
 		$display($time, "d=%b, clk=%b, rst=%b,q=%b\n", d, clk, reset, q);
	end 

initial

	#100 $finish;
endmodule
