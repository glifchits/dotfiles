#!/bin/bash

for pth in .vim .zshrc .vimrc .jshintrc .gitconfig
do
  ln -s "$(pwd)/$pth" ~/"$pth"
done
