
`include "rc16.v"
module rc16tb;
reg[15:0] A;
reg[15:0] B;
reg Cin;
wire [15:0] sum;
wire Cout;
rc16 dut(.A(A),.B(B),.Cin(Cin),.sum(sum), .Cout(Cout));
initial begin
A= 16'b0000000000000000;
B = 16'b0000000000000000;
Cin = 0;
#10;

A= 16'b0000000000000011;
B = 16'b0000000000000101;
Cin = 0;
#10;

A= 16'b0000000011111111;
B = 16'b0000000000000001;
Cin = 0;
#10;

A= 16'b1111111111111111;
B = 16'b0101010101010101;
Cin = 0;
#10;

A= 16'b1010;
B = 16'b0101;
Cin = 1;
#10;
$finish;
end
initial begin
$monitor ("time =%0t A =%b B=%b Cin=%b  Sum=%b Cout=%b", $time , A,B,Cin , sum,Cout);
end
initial begin
	 $fsdbDumpfile("rc16.fsdb");
	 $fsdbDumpvars(0, rc16tb);
	 end

endmodule




































































