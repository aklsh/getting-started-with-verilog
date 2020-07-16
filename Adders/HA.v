////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: HA.v
// Modified: 2020-07-16
// Description: 1-Bit Half Adder Module
//
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

primitive outSum(output sum, input A, input B);

    // Truth Table for sum
    table
      // A B   sum
         0 0 :  0  ;
         0 1 :  1  ;
         1 0 :  1  ;
         1 1 :  0  ;
    endtable
endprimitive

primitive outCarry(output carry, input A, input B);

    // Truth Table for carry out
    table
      // A B  carry
         0 0 :  0  ;
         0 1 :  0  ;
         1 0 :  0  ;
         1 1 :  1  ;
    endtable
endprimitive

module HA (output carry, output sum, input A, input B);

    // instantiating sum and carry primitives
    outSum s(sum, A, B);
    outCarry c(carry, A, B);
endmodule
