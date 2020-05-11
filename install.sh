#!/bin/bash

# Copy the default config file if not present already

############
# Includes #
############

if [ ! -f ./install_config ];
then
    cp ./install_config.dist ./install_config
fi

. ./env
. ./install_config
. $DOTFILES/colors

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

echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

###########
# INSTALL #
###########

# Uninstall everything
# TODO: Let the choice to backup :D

. $DOTFILES/uninstall.sh

# Install
. $DOTFILES/_install/install-xorg-server.sh

command -v "git" >/dev/null && . $DOTFILES/_install/install-git.sh
command -v "nvim" >/dev/null && . $DOTFILES/_install/install-nvim.sh
command -v "urxvt" >/dev/null && . $DOTFILES/_install/install-urxvt.sh
# TODO : Remove vim usage
command -v "vim" >/dev/null && . $DOTFILES/_install/install-vim.sh
command -v "zsh" >/dev/null && . $DOTFILES/_install/install-zsh.sh

