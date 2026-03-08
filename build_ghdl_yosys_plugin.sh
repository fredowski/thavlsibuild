#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

: ${PREFIX:=/home/caeuser/install}

GHDLYOSYSPLUGINCOMMIT=07a30ed39fb6a078f1bf7e9e88ce9ed712380ec2

# ghdl-yosys-plugin
if [ ! -d ghdl-yosys-plugin ]; then
  git clone https://github.com/ghdl/ghdl-yosys-plugin.git
fi
cd ghdl-yosys-plugin
git checkout ${GHDLYOSYSPLUGINCOMMIT}
make PREFIX=${PREFIX} GHDL=${PREFIX}/bin/ghdl -j 8

make install PREFIX=${PREFIX} 



