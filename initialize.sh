#!/bin/bash


if brew -v >/dev/null 2>&1; then
  echo "brew is installed :)"
else
  echo "Install brew first!"
  exit
fi

echo "Symlinking files"
for pth in .vim .zshrc .vimrc .jshintrc .gitconfig
do
  ln -s "$(pwd)/$pth" ~/"$pth"
done

brew install caskroom/cask/brew-cask
brew tap caskroom/fonts
