module TFF_AsyncClear (output reg Q, input T, input clr, input clk);
    initial begin
        Q = 0;
    end
    always @ (posedge clk, posedge clr) begin
        if(clr)
            Q <= 0;
        else
            Q <= Q ^ T;
    end
endmodule
