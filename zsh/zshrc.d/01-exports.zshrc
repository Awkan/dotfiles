#!/usr/bin/env zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

########
# PATH #
########

export PATH="/opt/nvim-linux-x86_64/bin:$PATH" # Neovim
