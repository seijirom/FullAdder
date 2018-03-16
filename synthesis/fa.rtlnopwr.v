module fa (ck, rst, a, b, ci, s, co);

input ck;
input rst;
input a;
input b;
input ci;
output s;
output co;

wire vdd = 1'b1;
wire gnd = 1'b0;

AND2X2 AND2X2_1 ( .A(a), .B(ci), .Y(_5_) );
OAI21X1 OAI21X1_1 ( .A(_4_), .B(_5_), .C(b), .Y(_6_) );
INVX1 INVX1_1 ( .A(b), .Y(_7_) );
OR2X2 OR2X2_1 ( .A(a), .B(ci), .Y(_1_) );
NAND2X1 NAND2X1_1 ( .A(a), .B(ci), .Y(_2_) );
NAND3X1 NAND3X1_1 ( .A(_7_), .B(_2_), .C(_1_), .Y(_3_) );
AOI21X1 AOI21X1_1 ( .A(_3_), .B(_6_), .C(rst), .Y(_0_) );
BUFX2 BUFX2_1 ( .A(gnd), .Y(co) );
BUFX2 BUFX2_2 ( .A(_8_), .Y(s) );
DFFPOSX1 DFFPOSX1_1 ( .CLK(ck), .D(_0_), .Q(_8_) );
NOR2X1 NOR2X1_1 ( .A(a), .B(ci), .Y(_4_) );
endmodule
