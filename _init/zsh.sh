echo -e ""
echo -e "${blue} Install oh-my-zsh ...${default}"

# Install ZSH
sudo apt install -y zsh

# Define default shell
chsh -s $(which zsh)

# Install oh-my-zsh
# TODO: Check GitHub ssh key existence
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

echo -e "${green} ...Done${default}"
