////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: patternDetector.v
// Modified: 2020-07-15
// Description: General Pattern detector module
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module patternDetector #(parameter pattern = 3'b111, parameter patternSize = $bits(pattern)) (output reg Y, input A, input clk);

    reg[patternSize-1:0] inputStream;

    always @(posedge clk, A) begin
        inputStream = {inputStream[patternSize-2:0], A};
    end
    always @(posedge clk) begin
        Y = (inputStream === pattern) ? 1'b1:1'b0;
    end
endmodule
