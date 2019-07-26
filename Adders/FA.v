primitive carryOut (output Cout, input A, input B, input Cin);
/*  Truth Table for carry out   */
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
/*  Truth Table for sum */
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
/*  instantiating sum and carry primitives  */
    sumOut s(sum, A, B, Cin);
    carryOut co(Cout, A, B, Cin);
endmodule
