module fa ( gnd, vdd, ck, rst, a, b, ci, s, co);

input gnd, vdd;
input ck;
input rst;
input a;
input b;
input ci;
output s;
output co;

AND2X2 AND2X2_1 ( .gnd(gnd), .vdd(vdd), .A(a), .B(ci), .Y(_5_) );
OAI21X1 OAI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(_4_), .B(_5_), .C(b), .Y(_6_) );
INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(b), .Y(_7_) );
OR2X2 OR2X2_1 ( .gnd(gnd), .vdd(vdd), .A(a), .B(ci), .Y(_1_) );
NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(a), .B(ci), .Y(_2_) );
NAND3X1 NAND3X1_1 ( .gnd(gnd), .vdd(vdd), .A(_7_), .B(_2_), .C(_1_), .Y(_3_) );
AOI21X1 AOI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(_3_), .B(_6_), .C(rst), .Y(_0_) );
BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(co) );
BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(_8_), .Y(s) );
DFFPOSX1 DFFPOSX1_1 ( .gnd(gnd), .vdd(vdd), .CLK(ck), .D(_0_), .Q(_8_) );
NOR2X1 NOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(a), .B(ci), .Y(_4_) );
endmodule
