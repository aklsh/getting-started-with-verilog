module TFF_SyncClear (output reg Q, input T, input clr, input clk);
    initial begin
        Q = 0;
    end
    always @ (posedge clk) begin
        if(clr)
            Q <= 0;
        else
            Q <= Q ^ T;
    end
endmodule
