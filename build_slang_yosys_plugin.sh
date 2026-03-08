#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

: ${PREFIX:=/home/caeuser/install}

# Yosys is supposed to be installed in PREFIX...
# We need to be able to find yosys-config
PATH=$PREFIX/bin:$PATH

SLANGYOSYSPLUGINCOMMIT=446240c31e2b4aa33334d3c568c5729a9e3ff9e7

# slang-yosys-plugin
if [ ! -d yosys-slang ]; then
  git clone --recursive https://github.com/povik/yosys-slang.git
fi
cd yosys-slang
git checkout ${SLANGYOSYSPLUGINCOMMIT}
make -j 8

mkdir -p "${PREFIX}/share/yosys/plugins"
cp ./build/slang.so "${PREFIX}/share/yosys/plugins"

