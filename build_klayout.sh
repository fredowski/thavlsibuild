#!/bin/bash -xe
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

: ${PREFIX:=/home/caeuser/install}

KLAYOUTCOMMIT=v0.30.6-3

# klayout
if [ ! -d klayout ]; then
  git clone --filter=blob:none https://github.com/KLayout/klayout.git
fi
cd klayout
git checkout ${KLAYOUTCOMMIT}
mkdir -p $PREFIX/lib/klayout
./build.sh -qmake qmake6 -j 8 -bin "$PREFIX/lib/klayout" 

echo "#!/bin/sh" > $PREFIX/bin/klayout
echo "LD_LIBRARY_PATH=$PREFIX/lib/klayout exec $PREFIX/lib/klayout/klayout \"\$@\"" >> $PREFIX/bin/klayout
chmod a+x $PREFIX/bin/klayout
