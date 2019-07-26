module DFF_AsyncClear(output reg Q, input D, input clk, input clr);
/*  DFF is positive edge-triggered  */
    always @ (posedge clk, clr) begin
    /*  if clr becomes 1, immediately clear FF o/p to 0*/
        if(clr)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule
