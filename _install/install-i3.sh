#!/bin/bash

echo -e "${blue}Install i3 config...${default}"

if [ ! -d $HOME/.i3 ]
then
    mkdir $HOME/.i3
fi

ln -s $DOTFILES/i3/lock.png /$HOME/.i3/lock.png
ln -s $DOTFILES/i3/config /$HOME/.i3/config
ln -s $DOTFILES/i3/scripts/ /$HOME/.i3/scripts

ln -s $DOTFILES/i3/i3status.conf $HOME/.i3/i3status.conf

echo -e "${green}...Done${default}"
