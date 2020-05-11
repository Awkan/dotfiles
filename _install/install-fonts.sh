#!/bin/bash

# see https://github.com/ryanoasis/nerd-fonts#patched-fonts for a lot of fonts

echo -e "${blue}Install the fonts...${default}"

if [ ! -d $HOME/.fonts ]
then
    mkdir $HOME/.fonts
fi

cp -f $DOTFILES/fonts/* $HOME/.fonts

echo -e "${green} ...Done${default}"

