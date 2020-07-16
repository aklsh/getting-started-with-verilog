////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: TFF_SyncClear.v
// Modified: 2020-07-16
// Description: T-Flip Flop
//              - Synchronous Clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module TFF_SyncClear (output reg Q, input T, input clr, input clk);

    initial begin
        Q = 0;
    end

    always @ (posedge clk) begin
        if(clr)
            Q <= 0;
        else
            Q <= Q ^ T;
    end
endmodule
