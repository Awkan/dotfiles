# Installation

First, clone the repository

```bash
git clone git@github.com:Awkan/dotfiles.git repo ~/dotfiles
```

Then create symbolic links
```bash
for f in $(ls -1 ~/dot-files); do ln -fs ~/dot-files/$f ~/.$f; done
```
