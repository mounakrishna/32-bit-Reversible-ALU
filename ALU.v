module alu(gin,s0,s1,s2,s3,a,b,cin,cout,out);
input gin,s0,s1,s2,s3,a,b,cin;
output cout,out;
wire log_out, arth_out;

	logical_unit u1(a,b,s0,s1,s2,log_out);
	arithmetic u2(gin,a,b,cin,s0,s1,s2,cout,arth_out);
	frg_gate u3(s3,log_out,arth_out, ,out, );

endmodule
