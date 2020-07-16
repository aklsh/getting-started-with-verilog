////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: DFF.v
// Modified: 2020-07-16
// Description: D-Flip Flop
//              - No Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module DFF(output reg Q, input D, input clk);
    // DFF is positive edge-triggered
    always@(posedge clk) begin
        Q <= D;
    end
endmodule
