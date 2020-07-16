////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2020 Akilesh Kannan <akileshkannan@gmail.com>
//
// File: FA.v
// Modified: 2020-07-16
// Description: 1-Bit Full Adder module
//              - Uses primitives for sum and carry outputs
//
// License: MIT
//
////////////////////////////////////////////////////////////////////////

`default_nettype None

`timescale 1ns/1ps

primitive carryOut (output Cout, input A, input B, input Cin);

    // Truth Table for carry out
    table
      // A B Cin    Cout
         1 1  ?   :  1  ;
         1 ?  1   :  1  ;
         ? 1  1   :  1  ;
         0 0  ?   :  0  ;
         0 ?  0   :  0  ;
         ? 0  0   :  0  ;
    endtable
endprimitive

primitive sumOut (output sum, input A, input B, input Cin);

    // Truth Table for sum
    table
      // A B Cin    sum
         1 1  1   :  1  ;
         1 0  0   :  1  ;
         0 1  0   :  1  ;
         0 0  1   :  1  ;
         0 0  0   :  0  ;
         0 1  1   :  0  ;
         1 0  1   :  0  ;
         1 1  0   :  0  ;
    endtable
endprimitive

module FA(output Cout, output sum, input A, input B, input Cin);

    // instantiating sum and carry primitives
    sumOut s(sum, A, B, Cin);
    carryOut co(Cout, A, B, Cin);
endmodule
