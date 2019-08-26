# dotfiles

A collection of standard configuration files.

## Notes

These dotfiles are intended for a macOS system.

## Install

```bash
$ cd ~
$ git clone https://github.com/zhaorz/.dotfiles.git .dotfiles

$ cd .dotfiles
$ chmod a+x install.sh
$ ./install.sh
```

All files and directories will be symlinked to your home directory unless
included in `IGNORE` in `install.sh`.

## Acknowledgements

Inspired by Richard Zhao's [.dotfiles](https://github.com/zhaorz/.dotfiles) repo.

## TODO

* Add git submodules for plugins
* List plugins used in README
