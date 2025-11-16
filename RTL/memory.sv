`timescale 1ns / 1ps

module memory(clock, cs, we, address, data_in, data_out);
    input clock;
    input cs;
    input we;
    input[6:0] address;
    input[7:0] data_in;
    output[7:0] data_out;
    
    reg[7:0] data_out;
    reg[7:0] RAM[0:127];

    always @ (negedge clock)
    begin
        if((we == 1) && (cs == 1))
            RAM[address] <= data_in[7:0];

        data_out <= RAM[address];
    end
endmodule

