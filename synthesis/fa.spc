*SPICE netlist created from BLIF module fa by blif2BSpice
.include /usr/local/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt fa vdd gnd ck rst a b ci s co 
XAND2X2_1 vdd gnd a ci _5_ AND2X2
XOAI21X1_1 gnd vdd _4_ _5_ _6_ b OAI21X1
XINVX1_1 b _7_ vdd gnd INVX1
XOR2X2_1 _1_ ci vdd gnd a OR2X2
XNAND2X1_1 vdd _2_ gnd a ci NAND2X1
XNAND3X1_1 _2_ vdd gnd _7_ _1_ _3_ NAND3X1
XAOI21X1_1 gnd vdd _3_ _6_ _0_ rst AOI21X1
XBUFX2_1 vdd gnd gnd co BUFX2
XBUFX2_2 vdd gnd _8_ s BUFX2
XDFFPOSX1_1 vdd _0_ gnd _8_ ck DFFPOSX1
XNOR2X1_1 vdd ci gnd _4_ a NOR2X1
.ends fa
 