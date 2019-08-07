`include "64bit.v"

module top;

reg[63:0] a, b;
reg cin;
wire[63:0] sum;
wire ca;

     sxtfBitAdder SxBA_0(a,b,cin,sum,ca);

initial
begin
	a=0;
	b=0;
	cin=1;
	#100 
	a =1;
	b = 16;
	cin = 0;
	#100
	a =64'b1111111111111111111111111111111111111111111111111111111111111111;
	b = 3;
	cin = 0;
end

initial
begin
	$monitor($time, "a = %b, b = %d,cin = %b, Sum = %d, ca = %b",a,b,cin,sum, ca);
	$dumpfile("64bit.vcd");
	$dumpvars;
end

endmodule
