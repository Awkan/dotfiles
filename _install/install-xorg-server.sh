#!/bin/bash

echo -e "${blue}Installing Xorg config...${default}"

ln -s $DOTFILES/xorg-server/Xresources $HOME/.Xresources
ln -s $DOTFILES/xorg-server/xinitrc $HOME/.xinitrc

echo -e "${green}...Done${default}"

