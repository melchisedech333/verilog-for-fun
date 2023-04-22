#!/bin/bash

iverilog -o system test-switch.v nmos.v pmos.v inverter.v switch.v
vvp system
rm -rf system


