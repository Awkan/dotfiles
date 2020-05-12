echo -e ""
echo -e "${red}Delete the actual config...${default}"

echo -e ""
echo -e "${light_red}Delete the composer config...${default}"
rm $COMPOSER_HOME/composer.json &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the i3 config...${default}"
rm -Rf $HOME/.config/i3 &>/dev/null
rm -Rf $HOME/.i3 &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the neovim config...${default}"
rm $HOME/.config/nvim/autoload/* &>/dev/null
rm -Rf $HOME/.config/nvim/pluggedconf &>/dev/null
rm $HOME/.config/nvim/UltiSnips/* &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the urxvt config...${default}"
rm $HOME/.Xdefaults &>/dev/null
rm $HOME/.dircolors
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the vim config...${default}"
rm $HOME/.vimrc &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the xorg-server config...${default}"
rm $HOME/.Xresources &>/dev/null
rm $HOME/.xinitrc &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the zsh config...${default}"
rm $HOME/.zshrc &>/dev/null
rm $HOME/.zshrc.d &>/dev/null
echo -e "${green}...Done${default}"
