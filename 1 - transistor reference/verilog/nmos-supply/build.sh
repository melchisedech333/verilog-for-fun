#!/bin/bash

iverilog -o system test-nmos.v nmos.v
vvp system
rm -rf system


