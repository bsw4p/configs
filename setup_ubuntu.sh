#!/bin/bash

cd $(dirname $0)

sudo apt install -y build-essential vim tmux git ctags cscope
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
