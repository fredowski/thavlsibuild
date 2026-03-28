#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

# ghdl
sudo apt -y install gnat llvm libboost-dev

# yosys
sudo apt -y install gawk git make python3 lld bison clang flex \
	libffi-dev libfl-dev libreadline-dev pkg-config tcl-dev zlib1g-dev \
	graphviz xdot time cmake
curl -LsSf https://astral.sh/uv/install.sh | sh

# openroad

## bazelisk

arch=$(uname -m)
os=$(uname -s)

case "$os" in
  Linux)
    case "$arch" in
	  x86_64)
        wget -O baz.deb https://github.com/bazelbuild/bazelisk/releases/download/v1.28.1/bazelisk-amd64.deb
        ;;
	  aarch64)
        wget -O baz.deb https://github.com/bazelbuild/bazelisk/releases/download/v1.28.1/bazelisk-arm64.deb
        ;;
      *)
        echo "Unknown architecture"
        exit 1
        ;;
    esac
	;;
  Darwin)
    echo "Todo"
    exit  1
    ;;
esac

sudo dpkg -i baz.deb
rm baz.deb

## Some xcb and friends libraries on aarch64
sudo apt -y install libx11-dev libice-dev libxcb-cursor-dev libxcb-icccm4-dev \
	libxcb-render0-dev libxcb-render-util0-dev \
	libx11-xcb-dev \
	libsm-dev \
	libxcb-keysyms1-dev \
	libxcb-shape0-dev \
	libxcb-sync-dev \
	libxcb-util-dev \
	libxcb-xfixes0-dev \
	libxcb-xkb-dev \
	libdbus-1-dev \
	libfontconfig-dev \
	libxkbcommon-dev \
	libxkbcommon-x11-dev \
	libxcb-randr0-dev

# klayout
sudo apt -y install \
	qt5-qmake \
	qtbase5-dev \
	qtbase5-dev-tools \
	qt6-base-dev \
	qt6-base-dev-tools \
	qt6-charts-dev \
	qt6-tools-dev \
	qt6-multimedia-dev \
	qt6-svg-dev \
	qt6-5compat-dev \
	libgit2-dev \
	libpython3-dev
