////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: DFF_SyncClear.v
// Modified: 2020-07-16
// Description: D-Flip Flop
//              - Synchronous Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module DFF_SyncClear(output reg Q, input D, input clk, input clr);

    // DFF is positive edge-triggered
    always @ (posedge clk) begin
        // check if clr is 1, ONLY AT POSITIVE CLOCK EDGE, then clear o/p
        if(clr)
            Q = 1'b0;
        else
            Q = D;
    end
endmodule
