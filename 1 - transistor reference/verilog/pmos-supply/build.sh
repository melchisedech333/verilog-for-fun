#!/bin/bash

iverilog -o system test-pmos.v pmos.v
vvp system
rm -rf system


