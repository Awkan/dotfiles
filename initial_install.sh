#!/bin/bash

. ./colors

################
# Presentation #
################

echo -e "
${yellow}
 ___________________________
|                           |
| Welcome to Awkan dotfiles |
|___________________________|
"

echo -e "${light_red}This install file will install some packages / programs in your computer."


###########
# INSTALL #
###########

echo -e "${blue}Update & upgrade system ...${default}"
sudo apt update
sudo apt upgrade
echo -e "${green} ...Done${default}"


echo -e "${blue}Install packages / programs ...${default}"
. ./$DOTFILES/_init/basic_packages.sh
. ./$DOTFILES/_init/bruno.sh
. ./$DOTFILES/_init/docker.sh
. ./$DOTFILES/_init/zsh.sh
echo -e "${green} ...Done${default}"

echo -e "${blue}Update system ...${default}"
sudo apt autoremove -y
echo -e "${green} ...Done${default}"
