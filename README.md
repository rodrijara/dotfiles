# Dotfiles
This repository holds the dotfiles I use for setting up my tools.

**Dotfiles** are the typical UNIX configuration files used for customization of programs like the shell `.bashrc`/`.zsh` or vim editors `.vimrc`.

They are name like that because of the leading `.` and they are hidden on your file system. 

If you want to reproduce these setups into your sytem, follow these steps:

1. Clone this repo into your `home`dir:
```shell
cd # go home 
git clone https://github.com/rodri-jara/dotfiles.git
```

2. Now that you have the `dotfiles` folder inside your `home` directory, you can generate the symlinks:

```shell
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/bashrc .zsh # you can use one bashrc file to generate both .bashrc and .zshrc
ln -s dotfiles/vimrc .vimrc
```

