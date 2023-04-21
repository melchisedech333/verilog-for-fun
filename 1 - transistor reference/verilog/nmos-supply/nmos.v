
/**
 * Iesus Hominum Salvator <3
 */

module mosfet_channel_n (
    input gate,
    input drain, 
    output source );

    // NMOS call:
    //   output  input  control
    nmos(source, drain, gate);

endmodule


