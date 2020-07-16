////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: switchDebouncer.v
// Modified: 2020-07-15
// Description: Switch Debouncing Circuit
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module switchDebouncer #(parameter integer N = 16) (output reg switchOut, input switchIn, input clk);

    wire rst, add;
    reg dFF1, dFF2;
    reg[N-1:0] timeReg, nextReg;

    assign rst = dFF1 ^ dFF2;
    assign add = ~timeReg[N-1];
    always @(rst, add, timeReg) begin
        case({rst, add})
            2'b00: nextReg <= timeReg;
            2'b01: nextReg <= timeReg + 1;
            default: nextReg <= {N{1'b0}};
        endcase
    end
    always @(posedge clk) begin
        dFF1 <= switchIn;
        dFF2 <= dFF1;
        timeReg <= nextReg;
    end
    always @(posedge clk) begin
        if(timeReg[N-1] == 1'b1)
            switchOut <= dFF2;
        else
            switchOut <= switchOut;
    end
endmodule
