module JohnsonCounter #(parameter integer N = 8) (output reg[N-1:0] JC, input clk);
/*  initially feed in 1 to register */
    initial begin
        JC = 1;
    end
/*  every clock edge, shift the bit to right nd connect inverted o/p of last to i/p of first    */
    always @(posedge clk) begin
        JC = {~JC[0], JC[N-1:1]};
    end
endmodule
