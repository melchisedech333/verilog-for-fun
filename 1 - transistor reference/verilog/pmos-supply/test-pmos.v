
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    supply1 vdd;
    wire gnd;
    reg gate;

    mosfet_channel_p u0(.gate(gate), .source(vdd), .drain(gnd));

    initial begin
        gate <= 0;

        $display("MOSFET channel P (PMOS)\n");
        $monitor("gate: %0b, source: %0b, drain: %0b", gate, vdd, gnd);

        #5 gate <= 1;
    end

endmodule


