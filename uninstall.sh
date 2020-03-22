echo -e ""
echo -e "${red}Delete the actual config ...${default}"

echo -e ""
echo -e "${light_red}Delete the neovim config ...${default}"
rm $HOME/.config/nvim/autoload/* &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the vim config ...${default}"
rm $HOME/.vimrc &>/dev/null
echo -e "${green}...Done${default}"

echo -e ""
echo -e "${light_red}Delete the zsh config ...${default}"
rm $HOME/.zshrc &>/dev/null
rm $HOME/.zshrc.d &>/dev/null
echo -e "${green}...Done${default}"
