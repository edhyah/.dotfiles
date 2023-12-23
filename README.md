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

If the arrow glyphs on the bottom do not show, install patched fonts for
powerline [here](https://github.com/powerline/fonts). You will also need to set
the Non-ASCII font or check the "Use built-in Powerline glyphs" box in "iTerm >
Preferences > Profiles > Text" to use a patched font (per [this](https://github.com/powerline/fonts/issues/44) issue).


## Notes

* To remove type annotations in Vim, go to `:CocConfig` and add the following:
```
{
    "pyright.inlayHints.variableTypes": false,
    "pyright.inlayHints.parameterTypes": false,
    "pyright.inlayHints.functionReturnTypes": false,
}
```

