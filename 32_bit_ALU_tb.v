module Final_tb();

reg cin;
reg [3:0]s;
reg [31:0]a,b;
wire cout;
wire [31:0]out;
integer i;
	Final_ALU uut(s[0],s[1],s[2],s[3],a,b,cin,cout,out);

	initial
	begin	
		for(i=0;i<16;i=i+1)  begin
		  a=15;b=13;cin=0;
		  s=i;
		  #50;
		  //s=14;
		  //#50;
		end
		
	end
endmodule