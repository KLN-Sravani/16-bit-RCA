/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun May 31 22:01:09 2026
/////////////////////////////////////////////////////////////


module rc16 ( A, B, Cin, sum, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] sum;
  input Cin;
  output Cout;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30;

  FADDX1_RVT U17 ( .A(A[0]), .B(B[0]), .CI(Cin), .CO(n30), .S(sum[0]) );
  FADDX1_RVT U18 ( .A(B[15]), .B(A[15]), .CI(n16), .CO(Cout), .S(sum[15]) );
  FADDX1_RVT U19 ( .A(B[14]), .B(A[14]), .CI(n17), .CO(n16), .S(sum[14]) );
  FADDX1_RVT U20 ( .A(B[13]), .B(A[13]), .CI(n18), .CO(n17), .S(sum[13]) );
  FADDX1_RVT U21 ( .A(B[12]), .B(A[12]), .CI(n19), .CO(n18), .S(sum[12]) );
  FADDX1_RVT U22 ( .A(B[11]), .B(A[11]), .CI(n20), .CO(n19), .S(sum[11]) );
  FADDX1_RVT U23 ( .A(B[10]), .B(A[10]), .CI(n21), .CO(n20), .S(sum[10]) );
  FADDX1_RVT U24 ( .A(B[9]), .B(A[9]), .CI(n22), .CO(n21), .S(sum[9]) );
  FADDX1_RVT U25 ( .A(B[8]), .B(A[8]), .CI(n23), .CO(n22), .S(sum[8]) );
  FADDX1_RVT U26 ( .A(B[7]), .B(A[7]), .CI(n24), .CO(n23), .S(sum[7]) );
  FADDX1_RVT U27 ( .A(B[6]), .B(A[6]), .CI(n25), .CO(n24), .S(sum[6]) );
  FADDX1_RVT U28 ( .A(B[5]), .B(A[5]), .CI(n26), .CO(n25), .S(sum[5]) );
  FADDX1_RVT U29 ( .A(B[4]), .B(A[4]), .CI(n27), .CO(n26), .S(sum[4]) );
  FADDX1_RVT U30 ( .A(B[3]), .B(A[3]), .CI(n28), .CO(n27), .S(sum[3]) );
  FADDX1_RVT U31 ( .A(B[2]), .B(A[2]), .CI(n29), .CO(n28), .S(sum[2]) );
  FADDX1_RVT U32 ( .A(B[1]), .B(A[1]), .CI(n30), .CO(n29), .S(sum[1]) );
endmodule

