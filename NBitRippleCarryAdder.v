module NBitRippleCarryAdder #(parameter N = 4)(output[N:0] total, input[N-1:0] A, input[N-1:0] B);
    wire[N-1:0] carryMiddle, sum;
    genvar i;
    generate
        for(i = 0;i < N;i = i+1)
            begin: genAdder
                if(i == 0)
                    HA f(carryMiddle[0], sum[0], A[0], B[0]);
                else
                    FA f(carryMiddle[i], sum[i], A[i], B[i], carryMiddle[i-1]);
            end
        assign total = {carryMiddle[N-1], sum[N-1:0]};
    endgenerate
endmodule
