#!/bin/bash

rm -rf wave.vcd
iverilog -o system device-interface.v half-adder.v gate-xor.v gate-nand.v gate-and.v
vvp system
rm -rf system
# gtkwave wave.vcd


