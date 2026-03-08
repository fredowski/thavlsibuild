#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

# This one overwrites the default settings in the tools
#export PREFIX=/home/caeuser/inst

# The versions are based on the IIC-OSIC-TOOLS 2026.02
# https://github.com/iic-jku/IIC-OSIC-TOOLS/blob/2026.02/_build/tool_metadata.yml

./build_ghdl.sh
./build_yosys.sh
./build_ghdl_yosys_plugin.sh
./build_slang_yosys_plugin.sh
./build_openroad.sh






