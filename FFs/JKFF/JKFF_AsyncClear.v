////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: JKFF_AsyncClear.v
// Modified: 2020-07-16
// Description: J-K Flip Flop
//              - Asynchronous clear
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module JKFF_AsyncClear (output reg Q, input J, input K, input clr, input clk);

    initial begin
        Q = 0;
    end

    always @ (posedge clk, posedge clr) begin
        if(clr)
            Q <= 0;
        else begin
            case({J,K})
                2'b00: Q <= Q;
                2'b01: Q <= 0;
                2'b10: Q <= 1;
                2'b11: Q <= ~Q;
            endcase
        end
    end
endmodule
