*SPICE netlist created from BLIF module fa by blif2BSpice
.include /usr/local/share/qflow/tech/OpenRule1um/OpenRule1um_stdcells.sp
.subckt fa vdd gnd ck rst a b ci s co 
XINVX1_1 rst _11_ vdd gnd INVX1
XINVX1_2 ci _12_ vdd gnd INVX1
XINVX1_3 a _13_ vdd gnd INVX1
XNAND2X1_1 vdd _14_ gnd _15_ _1_ NAND2X1
XNAND2X1_2 vdd _1_ gnd ci a NAND2X1
XNAND2X1_3 vdd _2_ gnd _3_ _2_ NAND2X1
XNAND2X1_4 vdd _3_ gnd b _4_ NAND2X1
XINVX1_4 b _4_ vdd gnd INVX1
XNAND2X1_5 vdd _5_ gnd ci _1_ NAND2X1
XNAND2X1_6 vdd _6_ gnd a _15_ NAND2X1
XNAND2X1_7 vdd _7_ gnd _7_ _8_ NAND2X1
XNAND2X1_8 vdd _8_ gnd _6_ _9_ NAND2X1
XNAND2X1_9 vdd _9_ gnd _5_ _10_ NAND2X1
XNAND2X1_10 vdd _10_ gnd _14_ _11_ NAND2X1
XINVX1_5 _12_ _0_ vdd gnd INVX1
XBUFX2_1 vdd gnd _15_ s BUFX2
XBUFX2_2 vdd gnd gnd co BUFX2
XDFFPOSX1_1 vdd _0_ gnd _15_ ck DFFPOSX1
.ends fa
 