# Dotfiles
This repository holds the dotfiles I use for setting up my tools.

**Dotfiles** are the typical UNIX configuration files used for customization of programs like the shell `.bashrc`/`.zsh` or vim editors `.vimrc`.

They are name like that because of the leading `.` and they are hidden on your file system. 

If you want to reproduce these setups into your sytem, clone this repo o copy/paste the files into your filesystem and generate symlinks:
```shell
ln -s SOURCE_FILE TARGET_FILE
```
```shell
cd ~ # make sure you move to home dir!
ln -s path/to/file/zshrc $HOME/.zshrc
ln -s path/to/file/vimrc $HOME/.vimrc
ln -s path/to/file/tmux.conf $HOME/.tmux.conf
```
Now you have these dotfiles into your $HOME dir, you need to source your .zshrc with `source .zshrc` or restart your terminal and you will see the changes.
