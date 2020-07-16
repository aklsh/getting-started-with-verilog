////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: lfsr.v
// Modified: 2020-07-15
// Description: Linear Feedback Shift Register (32-bit)
//              Used a pseudo-random number generator
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module lfsr #(parameter seed = 32'b1) (output reg[31:0] LFSRregister, input clk);

    // initially register will contain seed value
    initial begin
        LFSRregister = seed;
    end

    // at edge of each clock pulse, shift and XOR required bits
    always @(posedge clk) begin
        LFSRregister = LFSRregister << 1;
        LFSRregister[0] = LFSRregister[31] ^ LFSRregister[29] ^ LFSRregister[25] ^ LFSRregister[24];
    end
endmodule
