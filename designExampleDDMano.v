/*==============================================================================

Implementation of system used to illustrate the use of ASMD charts and RTL
representation, in the book "Digital Design, With An Introduction to Verilog HDL"
by M. Morris Mano and Michael D. Ciletti

(Fig. 8.12)

==============================================================================*/

module designExampleDDMano(A, E, F, clk, rstAL, start);
    output[3:0] A;
    output E, F;
    input clk, rstAL, start;
/*  instantiating control unit and datapath unit    */
    designExampleDTP datapathUnit(A, E, F, clrE, clrAF, setE, setF, incrA, clk);
    designExampleCTRL controlUnit(clrE, setE, setF, clrAF, incrA, A[3], A[2], start, rstAL, clk);
endmodule

module designExampleCTRL(clrE, setE, setF, clrAF, incrA, A3, A2, start, rstAL, clk);
    output reg clrE, setE, setF, clrAF, incrA;
    input A3, A2, start, rstAL, clk;
    reg[1:0] currState, nextState;
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b11;
    always @(posedge clk, negedge rstAL)
        if(rstAL == 0)   currState <= S0;
        else    currState <= nextState;
    always @ (start, A2, A3, currState) begin
        nextState = S0;
        case(currState)
            S0:
                if(start)   nextState = S1;
                else    nextState = S0;
            S1:
                if(A2 & A3) nextState = S2;
                else    nextState = S1;
            S2:
                nextState = S0;
            default:
                nextState = S0;
        endcase
    end
    always @ (currState, A2, start) begin
        setE = 0; setF = 0; clrE = 0; clrAF = 0; incrA = 0;
        case(currState)
            S0:
                if(start)   clrAF = 1;
            S1:
                begin   incrA = 1; if(A2) setE = 1; else  setE = 0;   end
            S2:
                setF = 1;
        endcase
    end
endmodule

module designExampleDTP(A, E, F, clrE, clrAF, setE, setF, incrA, clk);
    output reg[3:0] A;
    output reg E, F;
    input clrE, clrAF, setE, setF, incrA, clk;
    always @ (posedge clk) begin
        if(setE)    E <= 1;
        if(setF)    F <= 1;
        if(clrE)    E <= 0;
        if(clrAF)   begin   A <= 0; F <= 0;   end
        if(incrA)   A <= A+1;
    end
endmodule
