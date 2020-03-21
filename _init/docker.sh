echo -e ""
echo -e "${blue} Install docker ...${default}"

# SETTING UP REPOSITORY
# =====================

# Add Docker's official GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up stable repository for x86_64 / amd64
# !!! Since docker is not available for now for Ubuntu 19.10 (Eoan),
# !!! then install Ubuntu 19.04 (Disco) package
#sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   disco \
   stable"

# INSTALL DOCKER ENGINE - COMMUNITY
# =================================

# Install
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# MAKE DOCKER USABLE AS NON-ROOT USER
# ===================================

# Then create a docker group if not exists and add me in this group
[ $(getent group docker) ] || sudo groupadd docker > /dev/null 2>&1
sudo usermod -aG docker $USER

# Active changes to groups
#newgrp docker

# CHECK INSTALLATION
# ==================
docker run hello-world

echo -e "${green} ...Done${default}"

