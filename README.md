# dotfiles

A collection of standard configuration files.

## Notes

These dotfiles are intended for a macOS system.

## Install

I used the dark solarized theme for my terminal. To do this, download [iterm2](https://iterm2.com) and change your profile to this color preset.

```bash
$ cd ~
$ git clone https://github.com/edhyah/dotfiles.git .dotfiles

$ cd .dotfiles
$ chmod a+x install.sh
$ ./install.sh
```

All files and directories will be symlinked to your home directory unless
included in `IGNORE` in `install.sh`.

## Acknowledgements

Inspired by Richard Zhao's [.dotfiles](https://github.com/zhaorz/.dotfiles) repo.

## TODO

* List plugins used in README
