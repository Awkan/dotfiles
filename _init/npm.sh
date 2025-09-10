echo -e ""
echo -e "${blue} Install npm ...${default}"

curl -fsSL https://deb.nodesource.com/setup_23.x -o /tmp/nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install -y nodejs
node -v

rm /tmp/nodesource_setup.sh

echo -e "${green} ...Done${default}"
