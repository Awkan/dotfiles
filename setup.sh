# Install some basic packages
echo -e "\n \e[32m Install some basic packages \e[97m \n"
sudo apt install -y \
    git \
    tmux \
    vim \
    wget

# [oh-my-zsh] Install & default shell config
echo -e "\n \e[32m oh-my-zsh : install & default shell config \e[97m \n"
sudo apt install -y zsh
sudo chsh -s "$(which zsh)" root
echo -e "\n \e[32m Default SHELL is ${SHELL} \e[97m \n"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Create symlinks to every files contained in dotfiles directory
echo -e "\n \e[32m Create symlinks \e[97m \n"
for f in $(ls -1 ~/dotfiles); do ln -fs ~/dotfiles/$f ~/.$f; done
