////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: TFF_AsyncClear.v
// Modified: 2020-07-16
// Description: T-Flip Flop
//              - Asynchronous Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module TFF_AsyncClear (output reg Q, input T, input clr, input clk);

    initial begin
        Q = 0;
    end

    always @ (posedge clk, posedge clr) begin
        if(clr)
            Q <= 0;
        else
            Q <= Q ^ T;
    end
endmodule
