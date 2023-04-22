
/**
 * Iesus Hominum Salvator <3
 */

module switch(input inp, output out, input vdd, inout gnd);

    wire connection;

    inverter i1(.switch(inp), .result(connection), .vdd(vdd), .gnd(gnd));
    inverter i2(.switch(connection), .result(out), .vdd(vdd), .gnd(gnd));

endmodule


