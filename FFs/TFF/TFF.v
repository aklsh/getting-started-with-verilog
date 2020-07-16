////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: TFF.v
// Modified: 2020-07-16
// Description: T-Flip Flop
//              - No Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module TFF (output reg Q, input T, input clk);

    initial begin
        Q = 0;
    end

    always @ (posedge clk) begin
        Q <= Q ^ T;
    end
endmodule
