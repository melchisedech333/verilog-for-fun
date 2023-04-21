
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    reg gate;
    reg source;
    wire drain;

    mosfet_channel_p u0(.gate(gate), .source(source), .drain(drain));

    initial begin
        gate <= 0;
        source <= 0;

        $display("MOSFET channel P (PMOS)\n");
        $monitor("gate: %0b, source: %0b, drain: %0b", gate, source, drain);

        #5 source <= 1;
        #5 gate <= 1;
        #5 source <= 0;
    end

endmodule


