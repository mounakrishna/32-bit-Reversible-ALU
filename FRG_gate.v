module frg_gate(a,b,c,p,q,r);
input a,b,c;
output p,q,r;

	assign p = a;
	assign q = (~a & b) | (a & c);
	assign r = (a & b) | (~a & c);

endmodule
