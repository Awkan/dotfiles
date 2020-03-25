#!bin/bash

echo -e "${blue}Installing neovim configuration ...${default}"

# Create all necessary folder for neovim
if [ ! -d $HOME/.config/nvim ]
  then
    mkdir $HOME/.config/nvim

    # install neovim plugin manager
    curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install nvim config
ln -sf $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim

# Install all mandatory neovim folders if they don't already exist
mkdir -p $HOME/.config/nvim/autoload
mkdir -p $HOME/.config/nvim/backup
mkdir -p $HOME/.config/nvim/plugged
mkdir -p $HOME/.config/nvim/swap
mkdir -p $HOME/.config/nvim/undo
mkdir -p $HOME/.config/nvim/UltiSnips

# see :help autoload
ln -sf $DOTFILES/nvim/autoload/* $HOME/.config/nvim/autoload/

# configuration of different plugins
ln -sf $DOTFILES/nvim/pluggedconf/ $HOME/.config/nvim/pluggedconf

# snippets
ln -sf $DOTFILES/nvim/UltiSnips/* $HOME/.config/nvim/UltiSnips/

# see :help ftplugin
ln -sf $DOTFILES/nvim/ftplugin/ $HOME/.config/nvim/ftplugin

echo -e "${green} ...Done${default}"

