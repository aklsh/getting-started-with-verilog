module twoComplementer #(parameter N = 4)(output wire[N-1:0] twoComp, input[N-1:0] in);
    wire[N:0] total;

    NBitRippleCarryAdder #(.N(N)) adder(total, ~in, 1);
    assign twoComp = total[N-1:0];
endmodule
