////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: testbench.v
// Modified: 2020-07-15
// Description: Testbench Blueprint
//              - Instantiate the modules to test
//              - Provide Stimulus
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module testbench;

    //  parameters (if used)
    localparam tickRate = 10;   //half time-period of clock (in ns)

    //  all necessary variables
    wire clk;

    //  generating file to see signals
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, testbench);
    end

    //  clock-pulse
    clock #(.tickRate(tickRate)) clockModule(clk);

    //  instantiating module and other parallel statements
    //module name #() uut();

    //  stimuli
    initial begin
        #100 $finish;
    end
endmodule
