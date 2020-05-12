#!/bin/bash

echo -e "${blue}Install dunst config...${default}"

ln -s $DOTFILES/dunst/dunstrc $HOME/.dunstrc 

echo -e "${green}...Done${default}"
