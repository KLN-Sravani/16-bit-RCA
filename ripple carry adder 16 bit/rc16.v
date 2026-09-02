module fa(
input a,
input b, input cin,
output sum,
output cout);
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule
module rc16(
input [15:0]A,
input [15:0]B,
input Cin,
output [15:0]sum,
output Cout);

wire c1,c2,c3,c4,c5,c6,c7;
wire c8,c9,c10,c11,c12,c13,c14,c15;
fa fa0(A[0],B[0],Cin,sum[0],c1);
fa fa1(A[1],B[1],c1,sum[1],c2);
fa fa2(A[2],B[2],c2,sum[2],c3);
fa fa3(A[3],B[3],c3,sum[3],c4);
fa fa4(A[4],B[4],c4,sum[4],c5);
fa fa5(A[5],B[5],c5,sum[5],c6);
fa fa6(A[6],B[6],c6,sum[6],c7);
fa fa7(A[7],B[7],c7,sum[7],c8);
fa fa8(A[8],B[8],c8,sum[8],c9);
fa fa9(A[9],B[9],c9,sum[9],c10);
fa fa10(A[10],B[10],c10,sum[10],c11);
fa fa11(A[11],B[11],c11,sum[11],c12);
fa fa12(A[12],B[12],c12,sum[12],c13);
fa fa13(A[13],B[13],c13,sum[13],c14);
fa fa14(A[14],B[14],c14,sum[14],c15);
fa fa15(A[15],B[15],c15,sum[15],Cout);


endmodule
