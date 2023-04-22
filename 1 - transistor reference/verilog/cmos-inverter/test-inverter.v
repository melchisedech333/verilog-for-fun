
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    supply0 gnd;
    supply1 vdd;

    reg switch;
    wire result;
    
    inverter c1(.switch(switch), .result(result), .vdd(vdd), .gnd(gnd));

    initial begin
        switch <= 0;

        $display("Inverter - IHS <3\n");
        $monitor("[%0t]\tswitch: %0b, result: %0b", $time, switch, result);

        #5 switch <= 1;
        #5 switch <= 0;
        #5 switch <= 1;
    end
endmodule


