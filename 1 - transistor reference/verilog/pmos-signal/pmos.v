
/**
 * Iesus Hominum Salvator <3
 */

module mosfet_channel_p (
    input gate,
    input source, 
    output drain );

    // PMOS call:
    //   output  input  control
    pmos(drain, source, gate);

endmodule


