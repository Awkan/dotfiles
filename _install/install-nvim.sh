#!bin/bash

echo -e "${blue}Installing neovim configuration ...${default}"

# Create all necessary folders for neovim
if [ ! -d $HOME/.config/nvim ]
then
    mkdir $HOME/.config/nvim
fi

if [ ! -d $HOME/nvim ]
  then
    mkdir $HOME/nvim

    # install neovim plugin manager
    curl -fLo ~/.dotfiles/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install nvim config
ln -sf $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim

# Install all mandatory folders if they don't already exist
mkdir -p $HOME/nvim/backup
mkdir -p $HOME/nvim/swap
mkdir -p $HOME/nvim/undo

echo -e "${green} ...Done${default}"

