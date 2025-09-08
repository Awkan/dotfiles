echo -e ""
echo -e "${blue} Install Spotify...${default}"


# Add app to APT source with its GPG
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Make install
sudo apt update
sudo apt install spotify-client

echo -e "${green} ...Done${default}"
