// -----------------------------------------------------------------------------
//  Title         : 1bit full-adder with output latch
//  Project       : 
// -----------------------------------------------------------------------------
//  File          : fa.v
//  Author        : 
//  Created       : 2018/ 3/xx
//  Last modified : 
// -----------------------------------------------------------------------------
//  Description   : 1bit full-adder with output latch
// -----------------------------------------------------------------------------
//  Copyright (C) 2018 ??? All Rights Reserved.
// -----------------------------------------------------------------------------

`timescale  1ns/1ps

module fa(
    input   wire    ck,
    input   wire    rst,
    input   wire    a,
    input   wire    b,
    input   wire    ci,
    output  wire    s,
    output  wire    co
);

    reg       r_s, r_co;

    assign s = r_s, co = r_co;

    always @(posedge ck) begin
        if (rst == 1'b1) begin
            r_s <= 1'b0; r_co <= 1'b0;
        end
        else begin
            {r_co, r_s} = {a + b + ci};
//            r_s <= a ^ b ^ ci;
//            r_co <= (a & b) | (b & ci) | (ci & a);
        end
    end
endmodule
