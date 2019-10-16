module tof_gate(a,b,c,p,q,r);
input a,b,c;
output p,q,r;

	assign p = a;
	assign q = b;
	assign r = (a & b) ^ c;

endmodule
