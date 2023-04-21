
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    reg gate;
    reg drain;
    wire source;

    mosfet_channel_n u0(.gate(gate), .drain(drain), .source(source));

    initial begin
        gate <= 0;
        drain <= 0;

        $display("MOSFET channel N (NMOS)\n");
        $monitor("gate: %0b, drain: %0b, source: %0b", gate, drain, source);

        #5 drain <= 1;
        #5 gate <= 1;
        #5 drain <= 0;
    end

endmodule


