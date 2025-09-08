echo -e ""
echo -e "${blue} Install Discord ...${default}"

# URL came from Discord website for .deb download
wget https://discord.com/api/download\?platform=linux\&format=deb -O /tmp/discord.deb
sudo dpkg -i /tmp/discord.deb
rm /tmp/discord.deb

echo -e "${green} ...Done${default}"
