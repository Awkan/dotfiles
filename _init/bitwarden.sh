echo -e ""
echo -e "${blue} Install Bitwarden ...${default}"

# URL came from Bitwarden website for .deb download
wget https://bitwarden.com/download/\?app=desktop\&platform=linux\&variant=deb -O /tmp/bitwarden.deb
sudo dpkg -i /tmp/bitwarden.deb
rm /tmp/bitwarden.deb

echo -e "${green} ...Done${default}"
