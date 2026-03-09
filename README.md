# THA vlsi build scripts

These build scripts build and install the tha vlsi tools

  * YoSys
  * ghdl
  * YoSys ghdl plugin
  * YoSys slang plugin (System Verilog)
  * OpenROAD
  * KLayout

The versions are derived from the [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS/tree/main) curated by Harald Prettl.

## How to

Install dependencies for the builds with `installdependencies.sh`. Then
you can choose the individual builds or build all with `build.sh`

The default install path is `/home/caeuser/install`. To install to a different
location, you can uncomment the PREFIX definition in `build.sh`.

## Setup environment for OpenROAD flow scripts

  * add $PREFIX/bin to your PATH
  * add OPENROAD_EXE = $PREFIX/bin/openroad to your environment
  * add YOSYS_EXE = $PREFIX/bin/yosys to your environment
