module nBitShiftRegister #(parameter integer n = 4)(output reg[n-1:0] Q, input[n-1:0] D, input dSerial, input clk, input shiftL, input shiftR, input load, input clr);
    always @(posedge clk, negedge clr) begin
        if(clr == 1'b0)
            Q <= 0;
        else begin
            if(shiftL)  begin
                Q <= Q << 1;
                Q[0] <= dSerial;
            end
            if(shiftR) begin
                Q <= Q >> 1;
                Q[n-1] <= dSerial;
            end
            if(load)
                Q <= D;
        end
    end
endmodule
