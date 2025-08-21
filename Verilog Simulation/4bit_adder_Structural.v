module adder4 (S, cout, A, B, cin);
  input [3:0] A, B;
  input cin;
  output [3:0] S;     output cout;
  wire c1,c2,c3;
 fulladder FA0 (S[0],c1,A[0],B[0],cin);
 fulladder FA1 (S[1],c2,A[1],B[1],c1);
 fulladder FA2 (S[2],c3,A[2],B[2],c2);
 fulladder FA3 (S[3],cout,A[3],B[3],c3);
 endmodule 
 module fulladder (s, cout, a, b, c);
  input a, b, c;
  output s, cout;
  wire s1,c1,c2;
 xor G1 (s1,a,b),  G2 (s,s1,c), 
      G3 (cout,c2,c1);
  and G4 (c1,a,b), G5 (c2,s1,c);
 endmodule 