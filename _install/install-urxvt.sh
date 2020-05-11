#!/bin/bash

echo -e "${blue}Installing urxvt config...${default}"

ln -s $DOTFILES/urxvt/Xdefaults $HOME/.Xdefaults
ln -s $DOTFILES/urxvt/dircolors $HOME/.dircolors

echo -e "${green}...Done${default}"
