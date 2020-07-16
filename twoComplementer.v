////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: twoComplementer.v
// Modified: 2020-07-15
// Description: Two's complementer module
//              Find additive inverse
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module twoComplementer #(parameter N = 4) (output wire[N-1:0] twoComp, input[N-1:0] in);
    wire[N:0] total;

    assign total = ~in+1;
    assign twoComp = total[N-1:0];
endmodule
