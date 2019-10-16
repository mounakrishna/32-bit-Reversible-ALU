/*Logical unit is designed using PFAG gate and FG gate.
  C,D in PFAG is used as select lines. S2 also used as select line.
  S2 D C  |   Operation
  0  0 0  -  AND gate at S.
  0  1 0  -  NAND gate at S.
  0  0 1  -  OR gate at S.
  0  1 1  -  NOR gate at S.
  1  0 0  -  XOR gate at R.
  1  1 1  -  XNOR gate at R. 
  1  0 1  -  BUFFER A opertion at Q1 of FG gate.
  1  1 0  -  NOT gate at Q1 of FG gate.
*/


module logical_unit(a,b,s0,s1,s2,out);
input a,b,s0,s1,s2;
output out;
wire w1,w2,w3,w4,w5,w6;

	pfag_gate u1(a,b,s0,s1,w1, ,w2,w5);
	frg_gate u2(s0,a,b, , ,w3);
	fg_gate u3(s0,s1, ,w4);
	frg_gate u4(w4,w2,w3, ,w6, );
	frg_gate u5(s2,w5,w6, ,out, );

endmodule 



