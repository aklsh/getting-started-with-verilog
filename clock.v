////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: clock.v
// Modified: 2020-07-15
// Description: General Clock Module
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module clock #(parameter tickRate = 1) (output reg clk);

    initial begin
        clk = 1'b0;
        forever #tickRate clk = ~clk;
    end
endmodule
