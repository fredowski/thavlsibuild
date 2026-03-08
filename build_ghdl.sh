#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

: ${PREFIX:=/home/caeuser/install}

# see: https://github.com/iic-jku/IIC-OSIC-TOOLS/blob/main/_build/images/ghdl/Dockerfile

GHDLCOMMIT=b65faa8b232d88244428ac4806b3470ac87e1578

# ghdl
if [ ! -d ghdl ]; then
  git clone https://github.com/ghdl/ghdl.git
fi
cd ghdl
git checkout ${GHDLCOMMIT}

./configure --prefix=$PREFIX --with-llvm-config 
make -j 8
make install
