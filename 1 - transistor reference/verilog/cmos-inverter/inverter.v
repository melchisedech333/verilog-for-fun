
/**
 * Iesus Hominum Salvator <3
 */

module inverter(input switch, output result, input vdd, inout gnd);

    mosfet_channel_p p1(.gate(switch), .source(vdd), .drain(result));
    mosfet_channel_n n1(.gate(switch), .drain(gnd), .source(result));

endmodule


