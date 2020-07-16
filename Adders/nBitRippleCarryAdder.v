////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: nBitRippleCarryAdder.v
// Modified: 2020-07-16
// Description: N-Bit Ripple Carry Adder
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module nBitRippleCarryAdder #(parameter n = 4)(output[n:0] total, input[n-1:0] A, input[n-1:0] B);

    wire[n-1:0] carryMiddle, sum;

    genvar i;
    generate
        for(i = 0;i < n;i = i+1) begin: genAdder
            if(i == 0)
                HA f(carryMiddle[0], sum[0], A[0], B[0]);
            else
                FA f(carryMiddle[i], sum[i], A[i], B[i], carryMiddle[i-1]);
        end
    endgenerate

    assign total = {carryMiddle[n-1], sum[n-1:0]};
endmodule
