# dotfiles

A collection of standard configuration files.

## Prerequisites

Install in this order. Make sure to follow all installation instructions for
each package.

* [tmux](https://github.com/tmux/tmux)
* [oh-my-zsh](https://ohmyz.sh/)
* [neovim](https://github.com/neovim/neovim)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [onehalf](https://github.com/sonph/onehalf#installation--usage)
* [nodejs](https://nodejs.org/en/download/)
* [tmux-config](https://github.com/samoshkin/tmux-config)
* [fzf](https://github.com/junegunn/fzf)

## Install

```bash
$ cd ~
$ git clone git@github.com:edhyah/.dotfiles.git .dotfiles

$ cd .dotfiles
$ chmod a+x install.sh
$ ./install.sh
```

All files and directories will be symlinked to your home directory unless
included in `IGNORE` in `install.sh`.

## Post-Installation

After running `install.sh`, you need to set up the plugin managers:

### Vim/Neovim Plugins

1. Install [vim-plug](https://github.com/junegunn/vim-plug) if not already installed
2. Open vim/neovim and run `:PlugInstall` to install all plugins (fzf, fzf.vim, onehalf)

### Tmux Plugins

1. Install [TPM (Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm):
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```
2. Start tmux and press `prefix + I` (that's backtick + Shift-I) to install all plugins

## Fonts

If the arrow glyphs on the bottom do not show, install patched fonts for
powerline [here](https://github.com/powerline/fonts). You will also need to set
the Non-ASCII font or check the "Use built-in Powerline glyphs" box in "iTerm >
Preferences > Profiles > Text" to use a patched font (per [this](https://github.com/powerline/fonts/issues/44) issue).

