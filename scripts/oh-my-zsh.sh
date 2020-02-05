echo "\n \e[32m oh-my-zsh \e[97m \n"

# Install ZSH
sudo apt install -y zsh

# Define default shell
chsh -s $(which zsh)

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Then config files will be linked thanks to symlinks
# Then please check symlinks directory for more config
