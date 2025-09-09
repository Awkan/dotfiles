#echo -e ""
echo -e "${blue}Install Neovim ...${default}"

 Download Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

# Move newly downloaded app into opt folder
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Clear downloaded tar file
rm nvim-linux-x86_64.tar.gz

echo -e "${green} ...Done${default}"

