module memory #(parameter integer wordSize = 4, parameter integer numWords = 64)(output reg[wordSize-1:0] dataOut, input enable, input[$clog2(numWords)-1:0] address, input[wordSize-1:0] dataIn, input readWrite);
    reg[wordSize-1:0] mem[numWords-1:0];
/*  Whenever there is a change in either enable or readWrite, execute the always block   */
    always @(enable, readWrite) begin
        if(enable) begin
        /*  readWrite = 1 ==> read;
            readWrite = 0 ==> write; */
            if(readWrite)
                dataOut = mem[address];
            else
                mem[address] = dataIn;
        end
        /*  if not enabled, register is not connected   */
        else
            dataOut = 64'bz;
    end
endmodule
