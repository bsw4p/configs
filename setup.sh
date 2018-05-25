#!/bin/bash

cd $(dirname $0)

ln -f -s $(pwd)/vimrc ~/.vimrc
ln -f -s $(pwd)/tmux.conf ~/.tmux.conf
