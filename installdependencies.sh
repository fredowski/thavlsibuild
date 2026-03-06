#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright Friedrich Beckmann, 2026

# ghdl
sudo apt -y install gnat llvm

# yosys
sudo apt -y install gawk git make python3 lld bison clang flex \
	libffi-dev libfl-dev libreadline-dev pkg-config tcl-dev zlib1g-dev \
	graphviz xdot
curl -LsSf https://astral.sh/uv/install.sh | sh

## openroad

# bazel and bazelisk
sudo apt install apt-transport-https curl gnupg -y
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

sudo apt update && sudo apt install bazel

# Some xcb and friends libraries on aarch64
sudo apt -y install libX11-dev libice-dev libxcb-cursor-dev libxcb-iccm4-dev \
	libxcb-render0-dev libxcb-render-util0-dev 