#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
wget https://gist.githubusercontent.com/smwade/f80e89acf47b02ce0657f66c4996278e/raw/1085b2e29f30c58c8620f841bb3b853bfc55a0ce/.tmux.conf -P $HOME
