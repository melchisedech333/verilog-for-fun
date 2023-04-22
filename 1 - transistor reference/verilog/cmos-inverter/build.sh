#!/bin/bash

iverilog -o system test-inverter.v nmos.v pmos.v inverter.v
vvp system
rm -rf system


