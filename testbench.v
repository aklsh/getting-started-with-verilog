`timescale 1ns/1ps

module testbench;
/*  parameters (if used)    */
    localparam tickRate = 1;   //half time-period of clock (in ns)
/*  all necessary variables */
    wire clk;
/*  generating file to see signals  */
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, testbench);
    end
/*  clock-pulse */
    clock #(.tickRate(tickRate)) clockModule(clk);
/*  instantiating module and other parallel statements    */
    //moduleName #() uut();
/*  stimuli */
    initial begin
        #10 $finish;
    end
endmodule
