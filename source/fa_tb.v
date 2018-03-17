// -----------------------------------------------------------------------------
//  Title         : 1bit full-adder with output latch (test bench)
//  Project       : 
// -----------------------------------------------------------------------------
//  File          : fa_tb.v
//  Author        : 
//  Created       : 2018/ 3/xx
//  Last modified : 
// -----------------------------------------------------------------------------
//  Description   : 1bit full-adder with output latch
// -----------------------------------------------------------------------------
//  Copyright (C) 2018 ??? All Rights Reserved.
// -----------------------------------------------------------------------------

`timescale  1ns/1ps

module fa_tb();
    reg             ck, rst;
    reg     [2:0]   i;
    wire            s, co, a, b, ci;

    assign {a, b, ci} = i;
   
    always begin
        #50; ck = ~ck;
    end

    initial begin
        $dumpfile("fa_tb.vcd");
        $dumpvars(0,fa_tb);

        ck <= 0; rst <= 1; i <= 3'b000;
        #100; rst <= 0;
        #100; i <= 3'b001;
        #100; i <= 3'b010;
        #100; i <= 3'b011;
        #100; i <= 3'b100;
        #100; i <= 3'b101;
        #100; i <= 3'b110;
        #100; i <= 3'b111;
        #20000 $finish;
    end

    fa fa(.ck(ck), .rst(rst), .a(a), .b(b), .ci(ci), .s(s), .co(co));

endmodule
