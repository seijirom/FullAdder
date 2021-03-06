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

INVX1 INVX1_1 ( .A(rst), .Y(_11_) );
INVX1 INVX1_2 ( .A(ci), .Y(_12_) );
INVX1 INVX1_3 ( .A(a), .Y(_13_) );
NAND2X1 NAND2X1_1 ( .A(_12_), .B(_13_), .Y(_14_) );
NAND2X1 NAND2X1_2 ( .A(ci), .B(a), .Y(_1_) );
NAND2X1 NAND2X1_3 ( .A(_1_), .B(_14_), .Y(_2_) );
NAND2X1 NAND2X1_4 ( .A(b), .B(_2_), .Y(_3_) );
INVX1 INVX1_4 ( .A(b), .Y(_4_) );
NAND2X1 NAND2X1_5 ( .A(ci), .B(_13_), .Y(_5_) );
NAND2X1 NAND2X1_6 ( .A(a), .B(_12_), .Y(_6_) );
NAND2X1 NAND2X1_7 ( .A(_5_), .B(_6_), .Y(_7_) );
NAND2X1 NAND2X1_8 ( .A(_4_), .B(_7_), .Y(_8_) );
NAND2X1 NAND2X1_9 ( .A(_3_), .B(_8_), .Y(_9_) );
NAND2X1 NAND2X1_10 ( .A(_11_), .B(_9_), .Y(_10_) );
INVX1 INVX1_5 ( .A(_10_), .Y(_0_) );
BUFX2 BUFX2_1 ( .A(_15_), .Y(s) );
BUFX2 BUFX2_2 ( .A(gnd), .Y(co) );
DFFPOSX1 DFFPOSX1_1 ( .CLK(ck), .D(_0_), .Q(_15_) );
endmodule
