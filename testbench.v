`timescale 1ns/1ps

module testbench;
/*  parameters (if used)    */
    localparam clkRate = 1;   //half time-period of clock (in ns)
/*  all necessary variables */
    reg clk;
/*  generating file to see signals  */
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, testbench);
    end
/*  clock-pulse */
    initial begin
        clk = 1'b0;
        forever #clkRate clk = ~clk;
    end
/*  instantiating module and other parallel statements    */
    //moduleName #() uut();
/*  stimuli */
    initial begin
        #10 $finish;
    end
endmodule
