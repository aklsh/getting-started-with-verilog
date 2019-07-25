module NBitCarryLookAheadAdder #(parameter N = 4)(output[N:0] total, input[N-1:0] A, input[N-1:0] B);
    wire[N-1:0] gi, pi, sum;
    wire[N:0] ci;

    assign ci[0] = 1'b0;
    genvar i;
    generate
        for(i = 0;i < N;i = i+1)
            begin: giAndpi
                assign gi[i] = A[i]&B[i];
                assign pi[i] = A[i]^B[i];
                assign ci[i+1] = gi[i]|(pi[i]&ci[i]);
            end
    endgenerate
    genvar j;
    generate
        for(j = 0;j < N;j = j+1)
            begin: calculation
                FA adder(.Cout(), .sum(sum[j]), .A(A[j]), .B(B[j]), .Cin(ci[j]));
            end
    endgenerate
    assign total = {ci[N], sum[N-1:0]};
endmodule
