#!/bin/bash

source ./colors.sh

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
source ./$DOTFILES/_init/basic_packages.sh
source ./$DOTFILES/_init/bitwarden.sh
source ./$DOTFILES/_init/bruno.sh
source ./$DOTFILES/_init/discord.sh
source ./$DOTFILES/_init/docker.sh
source ./$DOTFILES/_init/ngrok.sh
source ./$DOTFILES/_init/npm.sh
source ./$DOTFILES/_init/nvim.sh
source ./$DOTFILES/_init/spotify.sh
source ./$DOTFILES/_init/zsh.sh
echo -e "${green} ...Done${default}"

echo -e "${blue}Update system ...${default}"
sudo apt autoremove -y
echo -e "${green} ...Done${default}"
