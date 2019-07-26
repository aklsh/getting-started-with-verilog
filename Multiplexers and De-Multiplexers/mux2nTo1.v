module mux2nTo1 #(parameter n = 2, parameter logn = $clog2(n))(output reg outMux, input[n-1:0] I, input[logn-1:0] S);
/*  output has to be selected input always  */
    always @ (I or S) begin
        outMux = I[S-:1];
    end
endmodule
