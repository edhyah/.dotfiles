# dotfiles

A collection of standard configuration files.

## Notes

These dotfiles are intended for a macOS system.

## Prerequisites

* tmux
* oh-my-zsh
* [neovim](https://github.com/neovim/neovim)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [onehalf](https://github.com/sonph/onehalf#installation--usage)
* [nodejs](https://nodejs.org/en/download/)
* [tmux-config](https://github.com/samoshkin/tmux-config)

## Install

I used the dark solarized theme for my terminal. To do this, download [iTerm2](https://iterm2.com) and change your profile to this color preset.

```bash
$ cd ~
$ git clone https://github.com/edhyah/.dotfiles.git .dotfiles

$ cd .dotfiles
$ chmod a+x install.sh
$ ./install.sh
```

All files and directories will be symlinked to your home directory unless
included in `IGNORE` in `install.sh`.

If the arrow glyphs on the bottom do not show, install patched fonts for powerline [here](https://github.com/powerline/fonts). You will also need to set the Non-ASCII font in "iTerm > Preferences > Profiles > Text" to use a patched font (per [this](https://github.com/powerline/fonts/issues/44) issue).

## TODO

* List plugins used in README
* Add photo
* https://github.com/onivim/oni/issues/826, but current path is /usr/local/opt/llvm, and last line was put in /usr/local/include; need to check if this is necessary! (symlinked)
* Full instructions: install vim-plug, oh-my-zsh, onehalfdark for gnome-terminal
