////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: mux2nTo1.v
// Modified: 2020-07-16
// Description: A general 2^n to 1 MUX, data width = 1bit
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module mux2nTo1 #(parameter n = 2, parameter logn = $clog2(n)) (output reg outMux, input[n-1:0] I, input[logn-1:0] S);

    //  output has to be selected input always
    always @ (I or S) begin
        outMux = I[S-:1];
    end
endmodule
