#!/bin/bash

cd $(dirname $0)

ln -f -s $(pwd)/vimrc ~/.vimrc
ln -f -s $(pwd)/tmux.conf ~/.tmux.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
