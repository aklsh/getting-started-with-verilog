module DFF_SyncClear(output reg Q, input D, input clk, input clr);
/*  DFF is positive edge-triggered  */
    always @ (posedge clk) begin
    /*  check if clr is 1, ONLY AT POSITIVE CLOCK EDGE, then clear o/p    */
        if(clr)
            Q = 1'b0;
        else
            Q = D;
    end
endmodule
