# dotfiles

A collection of standard configuration files.

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

If the arrow glyphs on the bottom do not show, install patched fonts for powerline [here](https://github.com/powerline/fonts). You will also need to set the Non-ASCII font or check the "Use built-in Powerline glyphs" box in "iTerm > Preferences > Profiles > Text" to use a patched font (per [this](https://github.com/powerline/fonts/issues/44) issue).

