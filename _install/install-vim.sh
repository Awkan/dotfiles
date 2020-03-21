#!/bin/bash

echo -e ""
echo -e "${blue} Installing vim config ...${default}"

ln -s $DOTFILES/vim/vimrc $HOME/.vimrc

echo -e "${green}...Done${default}"

