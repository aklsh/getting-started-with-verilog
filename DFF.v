module DFF(output reg Q, input D, input clk);
/*  DFF is positive edge-triggered  */
    always@(posedge clk) begin
        Q <= D;
    end
endmodule
