module arithmetic(gin,a,b,cin,s0,s1,s2,cout,out);
input gin,a,b,cin,s0,s1,s2;
output cout,out;
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
	
	not u1(w0,a);
	frg_gate u2(s0,w0,1'b1, ,w1, );
	frg_gate u3(s1,a,w1, ,w2, );
	
	frg_gate u4(s0,b,gin, ,w3, );
	frg_gate u5(s2,gin,1'b0, ,w4, );
	frg_gate u6(s0,w4,1'b1, ,w5, );
	frg_gate u7(s1,w3,w5, ,w6, );

	tof_gate u9(s0,s1,1'b0, , ,w8); 
	frg_gate u11(s2,1'b1,1'b0, ,w10, );
	frg_gate u12(w8,cin,w10, ,w11, );
	
	dkg_gate u13(s2,w2,w6,w11, , ,cout,out);
endmodule