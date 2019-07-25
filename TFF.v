module TFF (output reg Q, input T, input clk);
    initial begin
        Q = 0;
    end
    always @ (posedge clk) begin
        Q <= Q ^ T;
    end
endmodule
