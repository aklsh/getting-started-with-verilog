module CLKDivider #(parameter integer factor = 100) (output clkOut, input clkIn);
    wire clkOut;
    reg[31:0] counter;
/*  initially set counter to 0  */
    initial begin
        counter = 32'd0;
    end
/*  count the number of clock cycles of input clock*/
    always @ (posedge clkIn) begin
        counter <= counter+32'd1;
    /*  if number of clock cycles is equal to the factor, set counter to 0.   */
        if(counter == factor)
            counter <= 32'd0;
    end
/*  assign value to output clock, by checking with value of counter */
    assign clkOut = (counter < factor/2) ? 1'b0 : 1'b1;
endmodule
