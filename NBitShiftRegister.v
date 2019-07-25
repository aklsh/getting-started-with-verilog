module NBitShiftRegister #(parameter integer N = 4)(output reg[N-1:0] Q, input[N-1:0] D, input Ds, input clk, input shiftL, input shiftR, input load, input clr);
    always @(posedge clk, negedge clr) begin
        if(clr == 1'b0)
            Q <= 0;
        else begin
            if(shiftL)  begin
                Q <= Q << 1;
                Q[0] <= Ds;
            end
            if(shiftR) begin
                Q <= Q >> 1;
                Q[N-1] <= Ds;
            end
            if(load)
                Q <= D;
        end
    end
endmodule
