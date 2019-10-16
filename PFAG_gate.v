/* Module that defines PFAG gate.*/
module pfag_gate(a,b,c,d,p,q,r,s);
input a,b,c,d;
output p,q,r,s;

	assign p = a;
	assign q = a ^ b;
	assign r = a ^ b ^ c;
	assign s = ((a ^ b) & c) ^ (a & b) ^ d;

endmodule

