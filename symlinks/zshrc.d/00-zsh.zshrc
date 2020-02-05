ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE=true

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  history
  history-substring-search
  ssh-agent
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

autoload -U compinit && compinit

chmod +x $ZSH/oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh
