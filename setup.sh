#!/bin/bash

set -e

sudo dnf update
sudo dnf install ninja-build gettext libtool autoconf automake cmake g++ pkg-config unzip zsh powerline-fonts python3-pip python2 ctags clang-tools-extra util-linux-user xclip -y

sudo python -m pip install python-lsp-server pylint flake8 mypy pyls-isort \
python-lsp-black pyls-memestra

chsh -s /usr/bin/zsh

mkdir -p ~/Downloads

cd ~/Downloads

wget https://nodejs.org/dist/v14.18.0/node-v14.18.0-linux-x64.tar.xz
tar -xf node-v14.18.0-linux-x64.tar.xz

sudo cp -r node-v14.18.0-linux-x64/* /usr/

wget https://github.com/neovim/neovim/archive/refs/tags/v0.5.1.tar.gz
tar -xf v0.5.1.tar.gz

cd neovim-0.5.1
make CMAKE_BUILD_TYPE=Release
sudo make install

nvim --version
