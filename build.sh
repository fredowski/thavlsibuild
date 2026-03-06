#!/bin/bash -x

export PREFIX=/home/caeuser/inst

./build_ghdl.sh
./build_yosys.sh
./build_ghdl_yosys_plugin.sh
./build_openroad.sh






