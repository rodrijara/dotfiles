# Dotfiles
This repository holds the dotfiles I use.

**Dotfiles** are the typical UNIX configuration files used for customization of our programs or tools, like the shell `.bashrc`/`.zsh` or vim editors `.vimrc`.

They are name like that because of the leading `.` and are hidden on your file system. 

If you want to reproduce these setups into your sytem, clone this repository and add symlinks to the files:

```shell
cd # go home 
git clone https://github.com/rodri-jara/dotfiles.git
```

Now that you have the `dotfiles` folder inside your `HOME` directory, you can generate the symlinks

````shell
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/bashrc .zsh # note that you can use one bashrc file to generate both bash and zsh dotfiles
ln -s dotfiles/vimrc .vimrc
```

