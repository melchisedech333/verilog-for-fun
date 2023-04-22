
/**
 * Iesus Hominum Salvator <3
 */

// Base on: https://github.com/google/skywater-pdk-libs-sky130_fd_sc_hd/blob/main/cells/inv/sky130_fd_sc_hd__inv.functional.v
module inverter(input switch, output result);

    wire out;
    not not0 (out, switch);
    buf buf0 (result, out);

endmodule


