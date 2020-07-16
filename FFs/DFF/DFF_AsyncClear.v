////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: DFF_AsyncClear.v
// Modified: 2020-07-16
// Description: D-Flip Flop
//              - Asynchronous Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module DFF_AsyncClear(output reg Q, input D, input clk, input clr);

    // DFF is positive edge-triggered
    always @ (posedge clk, clr) begin
        // if clr becomes 1, immediately clear FF o/p to 0
        if(clr)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule
