////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: nBitCarryLookAheadAdder.v
// Modified: 2020-07-16
// Description: N-Bit Carry Look Ahead Adder
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module nBitCarryLookAheadAdder #(parameter n = 4)(output[n:0] total, input[n-1:0] A, input[n-1:0] B);

    wire[n-1:0] gi, pi, sum;
    wire[n:0] ci;

    assign ci[0] = 1'b0;

    genvar i;
    generate
        for(i = 0;i < n;i = i+1) begin: giAndpi
            assign gi[i] = A[i]&B[i];
            assign pi[i] = A[i]^B[i];
            assign ci[i+1] = gi[i]|(pi[i]&ci[i]);
        end
    endgenerate

    genvar j;
    generate
        for(j = 0;j < n;j = j+1) begin: calculation
            FA adder(.Cout(), .sum(sum[j]), .A(A[j]), .B(B[j]), .Cin(ci[j]));
        end
    endgenerate

    assign total = {ci[n], sum[n-1:0]};
endmodule
