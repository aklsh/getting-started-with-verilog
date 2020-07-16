////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: deMUX1To2n.v
// Modified: 2020-07-16
// Description: A General 1 to 2^n Demultiplexer, 1 bit Data
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module deMUX1To2n #(parameter n = 2, parameter logn = $clog2(n)) (output reg[n-1:0] outDemux, input a, input[logn-1:0] s);

    // initially set all outputs to 0
    initial begin
        outDemux = 0;
    end

    // all outputs have to be 0, except for the selected output required
    always @(a, s) begin
        // set all to 0, then change the selected output
        outDemux = 0;
        outDemux[s-:1] = a;
    end
endmodule
