module dLatch(output reg Q, input D, input enable);
/*  Level Triggered */
    always @(enable, D) begin
    /*  if latch is enabled, then set o/p   */
        if(enable)
            Q <= D;
        else
            Q <= 1'bz;
    end
endmodule
