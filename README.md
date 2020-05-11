# My personnal Dotfiles

Based on [Phantas0s dotfiles](https://github.com/Phantas0s/.dotfiles) architecture.

## Packages & programs Installation 

If this is your first installation of this dotfiles, be sure to got the right packages & programs.

In order to make automatic check and install missing packages / programs, you may run : 
```bash
./initial_install.sh
```

## Config Installation

First, create configuration files
```bash
cp install_config.dist install_config
```

Then check that the following files are well configured for your workspace : 
- `env`
- `install_config`

Now let's install configuration

The config installation is automatic thanks to install script. Then run it :
```bash
./install.sh
```

