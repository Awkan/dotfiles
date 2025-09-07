echo -e ""
echo -e "${blue}Install some basic packages ...${default}"

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    flameshot \
    git \
    gnupg-agent \
    keychain \
    ripgrep \
#    rxvt-unicode \
    software-properties-common \
    tmate \
    tmux \
    vim \
    wget \
    wclip

echo -e "${green} ...Done${default}"

