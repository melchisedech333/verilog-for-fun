#!/bin/bash

iverilog -o system test.v calculator.v
vvp system
rm -rf system



