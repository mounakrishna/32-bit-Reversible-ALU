module Final_ALU(s0,s1,s2,s3,a,b,cin,cout,out);
input s0,s1,s2,s3,cin;
input [31:0]a,b;
output cout;
output [31:0]out;
wire c[30:0];
genvar i;
	alu u1(1'b1,s0,s1,s2,s3,a[0],b[0],cin,c[0],out[0]);
	for (i=0;i<30;i=i+1)  begin
		alu u2(1'b0,s0,s1,s2,s3,a[i+1],b[i+1],c[i],c[i+1],out[i+1]);
	end
	alu u2(1'b0,s0,s1,s2,s3,a[31],b[31],c[30],cout,out[31]);
endmodule


