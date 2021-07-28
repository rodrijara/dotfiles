# Dotfiles
This repository holds the dotfiles I use for setting up my tools.

**Dotfiles** are the typical UNIX configuration files used for customization of programs like the shell (`.bashrc`/`.zsh`) or vim editors (`.vimrc`).

They are named like that because of the leading `.` and they are hidden on your file system. 

If you want to reproduce these setups into your sytem, clone this repo o copy/paste the files into your filesystem and generate symlinks:

```shell
# use ln command, here's a hint
ln -s SOURCE_FILE TARGET_FILE
```
Run the commands replacing "path/to/file" wherever you placed your files when copied.
```shell
ln -s path/to/file/zshrc $HOME/.zshrc
ln -s path/to/file/vimrc $HOME/.vimrc
ln -s path/to/file/tmux.conf $HOME/.tmux.conf
```
Now you have these dotfiles into your $HOME dir, you need to source your .zshrc with `source .zshrc` or restart your terminal and you will see the changes.
