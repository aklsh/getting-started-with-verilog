////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: dLatch.v
// Modified: 2020-07-15
// Description: D-Latch (Level-Triggered Memory element)
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module dLatch(output reg Q, input D, input enable);

    // Level Trigger
    always @(enable, D) begin
        // if latch is enabled, then set o/p
        if(enable)
            Q <= D;
        else
            Q <= 1'bz;
    end
endmodule
