////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: fifo.v
// Modified: 2020-07-15
// Description: First In First Out (FIFO) Buffer
//              - Synchronous Operation
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

module fifo #(parameter DATA_WIDTH = 1,             // width of each stored element
                        ADDRESS_WIDTH = 13          // address width of the buffer
             )
             (output reg [DATA_WIDTH-1:0] dataOut,   // output data
              output full,                           // signal for indicating FIFO is full
              output empty,                          // signal for indicating FIFO is empty
              output [ADDRESS_WIDTH:0] filled,       // number of memory locations filled
              input read,                            // read signal
              input write,                           // write signal
              input [DATA_WIDTH-1:0] dataIn,         // data to write
              input reset,                           // reset signal (Active-High)
              input enable,                          // enable signal
              input clk                              // clock pulse
             );


    /*
                First In First Out Buffer


        +------------------------......-------------+
        |   |   |   |   |   |   |...... |   |   |   |
        +------------------------......-------------+
              ↑           ↑
             read        write


        - Read output data in read pointer location
        - Write input data to write pointer location
        - Both pointers set to 0 initially
        - If empty, do not read
        - If full, do not write
        - Reset to erase memory

    */

    reg [DATA_WIDTH-1:0] memory [0:FIFO_SIZE-1];              // main memory
    wire writeEnable, readEnable;                             // actual read/write signals, incorporating empty and full exceptions
    reg [ADDRESS_WIDTH:0] readPointer, writePointer;          // read and write pointers

    assign writeEnable = write & !full;
    assign readEnable = read & !empty;

    always @(posedge clk) begin
        if (reset) begin
            writePointer <= 0;
            readPointer <= 0;
        end
        else begin
            if (enable) begin
                if (readEnable) begin
                    dataOut <= memory[readPointer];
                    readPointer <= readPointer+1;
                end
                if (writeEnable) begin
                    memory[writePointer] <= dataIn;
                    writePointer <= writePointer+1;
                end
            end
            else begin
                writePointer <= writePointer;
                readPointer <= readPointer;
            end
        end
    end

    // assign outputs
    assign filled = writePointer - readPointer;
    assign full = (filled == {1'b1, {ADDRESS_WIDTH-1{1'b0}}});
    assign empty = (filled == 0);

endmodule
