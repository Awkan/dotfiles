echo -e ""
echo -e "${blue}Install some basic packages ...${default}"

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg-agent \
    ripgrep \
    software-properties-common \
    tmate \
    tmux \
    vim \
    wget

echo -e "${green} ...Done${default}"

