# Create symlinks to every files contained in dotfiles directory
for f in $(ls -1 ~/dotfiles); do ln -fs ~/dotfiles/$f ~/.$f; done
