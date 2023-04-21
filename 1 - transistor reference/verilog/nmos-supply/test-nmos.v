
/**
 * Iesus Hominum Salvator.
 */

module tests();

    supply1 vdd;
    wire gnd;
    reg gate;

    mosfet_channel_n u0(.gate(gate), .drain(vdd), .source(gnd));

    initial begin
        gate <= 0;

        $display("MOSFET channel N (NMOS)\n");
        $monitor("gate: %0b, drain(Vdd): %0b, source(gnd): %0b", gate, vdd, gnd);

        #5 gate <= 1;
    end

endmodule


