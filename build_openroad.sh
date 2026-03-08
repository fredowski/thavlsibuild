#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

${PREFIX:=/home/caeuser/install}


OPENROADCOMMIT=d807840d5c18ee8c7116bb6775c8aa915e1a3844

# openroad
if [ ! -d OpenROAD ]; then
  git clone --recurse-submodules https://github.com/The-OpenROAD-Project/OpenROAD.git
fi

cd OpenROAD
git checkout ${OPENROADCOMMIT}
bazelisk build --//:platform=gui //:openroad 

# Hack until PR https://github.com/The-OpenROAD-Project/OpenROAD/pull/9656 is merged
cp -f bazel-bin/openroad $PREFIX/bin/
cp -f -r -L bazel-bin/openroad.runfiles $PREFIX/bin/
cd $PREFIX/bin
chmod -R u+w openroad.runfiles
rm openroad.runfiles/MANIFEST
rm -rf openroad.runfiles/_main
