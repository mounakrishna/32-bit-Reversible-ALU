module dkg_gate(a,b,c,d,p,q,r,s);
input a,b,c,d;
output p,q,r,s;
wire w1,w2,w3;

	assign p = b;
	assign q = (~a & c) | (a & ~d);

	assign w1 = a^b;
	assign w2 = c^d;
	assign w3 = c&d;
	assign r = (w1 & w2) ^ w3;

	assign s = b ^ c ^ d;

endmodule
