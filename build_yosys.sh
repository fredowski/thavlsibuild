#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

${PREFIX:=/home/caeuser/install}

VERSION=0.62

# yosys
mkdir -p ./yosys
cd yosys
if [ ! -e yosys.tar.gz ]; then
  wget https://github.com/YosysHQ/yosys/releases/download/v${VERSION}/yosys.tar.gz
fi

if [ ! -d yosys-${VERSION} ]; then
  tar -xzf yosys.tar.gz
fi

make PREFIX=${PREFIX} -j 8
make install PREFIX=${PREFIX} 



