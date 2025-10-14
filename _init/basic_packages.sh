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
    make \
    maven \
    ripgrep \
#    rxvt-unicode \
    software-properties-common \
    tmate \
    tmux \
    vim \
    wget \
    wclip

# Some more specific packages : PDF oriented
sudo apt install -y \
    pdftk \
    poppler-utils

echo -e "${green} ...Done${default}"

