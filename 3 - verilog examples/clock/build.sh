#!/bin/bash

iverilog -o system test.v application.v
vvp system
rm -rf system



