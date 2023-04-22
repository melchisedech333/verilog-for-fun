#!/bin/bash

iverilog -o system test-inverter.v inverter.v
vvp system
rm -rf system


