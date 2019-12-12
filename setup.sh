#!/bin/bash

DOT_FILES=( .gitconfig .pryrc .bashrc .bash_profile )

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/dotfiles/$file $HOME/$file
done
