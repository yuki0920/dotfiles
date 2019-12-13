#!/bin/bash

DOT_FILES=( .gitconfig .pryrc .bashrc .bash_profile .git-completion.bash .git-prompt.sh )

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/dotfiles/$file $HOME/$file
done
