echo "\e[32m"
echo "Install scripts"
echo "==============="
echo "\e[97m"
for f in $(ls -1 ~/dotfiles/scripts); do $SHELL ~/dotfiles/scripts/$f; done

echo "\e[32m"
echo "Create symlinks"
echo "==============="
echo "\e[97m"
for f in $(ls -1 ~/dotfiles/symlinks);
do
    echo "Link ~/dotfiles/symlinks/$f";
    ln -fs ~/dotfiles/symlinks/$f ~/.$f;
done
