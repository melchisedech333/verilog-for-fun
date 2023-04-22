
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    supply0 gnd;
    supply1 vdd;

    reg inp;
    wire out;
    
    switch s1(.inp(inp), .out(out), .vdd(vdd), .gnd(gnd));

    initial begin
        inp <= 0;

        $display("Switch - IHS <3\n");
        $monitor("[%0t]\tinput: %0b, output: %0b", $time, inp, out);

        #5 inp <= 1;
        #5 inp <= 0;
        #5 inp <= 1;
    end
endmodule


