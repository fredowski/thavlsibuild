#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

# This one overwrites the default settings in the tools
#export PREFIX=/home/caeuser/inst

./build_ghdl.sh
./build_yosys.sh
./build_ghdl_yosys_plugin.sh
./build_openroad.sh






