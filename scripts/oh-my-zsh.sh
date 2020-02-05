echo "\n \e[32m oh-my-zsh \e[97m \n"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
ZSH_CUSTOM_PLUGINS=$ZSH_CUSTOM/plugins
ZSH_CUSTOM_THEMES=$ZSH_CUSTOM/themes
ZSH_CUSTOM_THEME_SPACESHIP=$ZSH_CUSTOM_THEMES/spaceship-prompt
ZSH_CUSTOM_THEME_SPACESHIP_SYMLINK=$ZSH_CUSTOM_THEMES/spaceship.zsh-theme

# Install ZSH
sudo apt install -y zsh

# Define default shell
chsh -s $(which zsh)

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# THEMES INSTALLATION
# ===================
# Install Spaceship Theme
if [[ -d "$ZSH_CUSTOM_THEME_SPACESHIP" ]]
then
    echo "$ZSH_CUSTOM_THEME_SPACESHIP already exists. Skipping git clone operation."
else
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM_THEME_SPACESHIP"
fi
if [[ -f "$ZSH_CUSTOM_THEME_SPACESHIP_SYMLINK" ]]
then
    echo "Symlink $ZSH_CUSTOM_THEME_SPACESHIP_SYMLINK already exists, skipping."
else
ln -s "$ZSH_CUSTOM_THEME_SPACESHIP/spaceship.zsh-theme" "$ZSH_CUSTOM_THEME_SPACESHIP_SYMLINK"
fi

# PLUGINS INSTALLATION
# ====================
declare -a plugins=(
    "https://github.com/zsh-users/zsh-autosuggestions"
    "https://github.com/zsh-users/zsh-syntax-highlighting"
)

for URL in ${plugins[@]}; do
    PLUGIN_NAME=$(basename $URL)
    if [[ -d "$ZSH_CUSTOM_PLUGINS/$PLUGIN_NAME" ]]; then
        echo "$ZSH_CUSTOM_PLUGINS/$PLUGIN_NAME already exists, skipping."
    else
        (cd $ZSH_CUSTOM_PLUGINS; git clone $URL)
    fi
done

# Then config files will be linked thanks to symlinks
# Then please check symlinks directory for more config

