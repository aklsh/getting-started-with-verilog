////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: nBitCounter.v
// Modified: 2020-07-16
// Description: N-Bit Counter, with customisable increment
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module nBitCounter #(parameter n = 32, parameter inc = 1, parameter seed = 0) (output reg[n-1:0] count, input clk, input rst, input[n-1:0] pl, input load);

    // initially set count to start/seed
    initial begin
        count = seed;
    end

    always @ (posedge clk, rst, load) begin
        // if load input is active, stop counting and take in the load
        if(load)
            count = pl;

        // if reset is active, reset to 0
        else if(rst)
            count = 0;

        // else, increment count by increment value
        else
            count = count + inc;
    end
endmodule
