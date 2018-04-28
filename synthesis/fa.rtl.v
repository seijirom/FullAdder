module fa ( gnd, vdd, ck, rst, a, b, ci, s, co);

input gnd, vdd;
input ck;
input rst;
input a;
input b;
input ci;
output s;
output co;

INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(rst), .Y(_11_) );
INVX1 INVX1_2 ( .gnd(gnd), .vdd(vdd), .A(ci), .Y(_12_) );
INVX1 INVX1_3 ( .gnd(gnd), .vdd(vdd), .A(a), .Y(_13_) );
NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_12_), .B(_13_), .Y(_14_) );
NAND2X1 NAND2X1_2 ( .gnd(gnd), .vdd(vdd), .A(ci), .B(a), .Y(_1_) );
NAND2X1 NAND2X1_3 ( .gnd(gnd), .vdd(vdd), .A(_1_), .B(_14_), .Y(_2_) );
NAND2X1 NAND2X1_4 ( .gnd(gnd), .vdd(vdd), .A(b), .B(_2_), .Y(_3_) );
INVX1 INVX1_4 ( .gnd(gnd), .vdd(vdd), .A(b), .Y(_4_) );
NAND2X1 NAND2X1_5 ( .gnd(gnd), .vdd(vdd), .A(ci), .B(_13_), .Y(_5_) );
NAND2X1 NAND2X1_6 ( .gnd(gnd), .vdd(vdd), .A(a), .B(_12_), .Y(_6_) );
NAND2X1 NAND2X1_7 ( .gnd(gnd), .vdd(vdd), .A(_5_), .B(_6_), .Y(_7_) );
NAND2X1 NAND2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_4_), .B(_7_), .Y(_8_) );
NAND2X1 NAND2X1_9 ( .gnd(gnd), .vdd(vdd), .A(_3_), .B(_8_), .Y(_9_) );
NAND2X1 NAND2X1_10 ( .gnd(gnd), .vdd(vdd), .A(_11_), .B(_9_), .Y(_10_) );
INVX1 INVX1_5 ( .gnd(gnd), .vdd(vdd), .A(_10_), .Y(_0_) );
BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(_15_), .Y(s) );
BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(co) );
DFFPOSX1 DFFPOSX1_1 ( .gnd(gnd), .vdd(vdd), .CLK(ck), .D(_0_), .Q(_15_) );
endmodule
