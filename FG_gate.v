/* module that defines Feynman gate - FG gate */
module fg_gate(a,b,p,q);
input a,b;
output p,q;

	assign p = a;
	assign q = a ^ b;

endmodule
