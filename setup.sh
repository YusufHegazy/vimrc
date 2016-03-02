#!/bin/bash
#  setup.sh

HOMEDIR=~
VIMRC=.vimrc
BUNDLE=$HOMEDIR/.vim_bundle
UNDOES=$HOMEDIR/.vim_undoes

mkdir -pv $BUNDLE
mkdir -pv $UNDOES
cp -fv $VIMRC $HOMEDIR/$VIMRC
git clone https://github.com/gmarik/Vundle.vim.git $BUNDLE/Vundle.vim
vim +PluginInstall +qall
echo "Done! Please enjoy."
