echo -e ""
echo -e "${blue} Install Bruno (Http Client) ...${default}"


# Create potential missing folders
sudo mkdir -p /etc/apt/keyrings
sudo mkdir -p /root/.gnupg

# Add app to APT source with its GPG
sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266 
echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list

# Make install
sudo apt update
sudo apt install bruno

echo -e "${green} ...Done${default}"
