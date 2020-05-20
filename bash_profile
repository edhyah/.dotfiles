stty -ixon

# Prompt customization
PS1='\[\e[1;91m\][\u@macbook9 \W]\$\[\e[0m\] '

# Python history
export PYTHONSTARTUP=$HOME/.pythonrc

# Keys (shouldn't be here...)
export RC_PUBLIC_KEY=7
export RC_PRIVATE_KEY=32Fdd53EaFb5864ea9DFABCDEFGHIJKLM

alias grep='egrep --color'

alias ls='ls -G'
alias v='vim'
alias tmuxconf='vim ~/.tmux.conf'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bash_profile'
alias source_bashrc='source ~/.bash_profile'
alias source_tmux='tmux source ~/.tmux.conf'

alias flow='~/Documents/flowvm/build/cxx/flow'
alias mlenv='source /Users/edwardahn/Documents/envs/mlagents/bin/activate'
alias pubenv='source /Users/edwardahn/Documents/envs/pub/bin/activate'

alias bulletenv='source /Users/edwardahn/Documents/envs/bullet/bin/activate; export PYTHONPATH=$PYTHONPATH:~/Documents/packages/bullet3/build_cmake/examples/pybullet'

# TDG Rez configuration
export PATH="/usr/local/apps/rez/_core/2.18.0-a0/osx/bin/rez:/Volumes/TDG-CCT/pipeline/packages/rez/_core/2.18.0/osx/bin/rez:$PATH"
export REZ_CONFIG_FILE="/Volumes/TDG-CCT/pipeline/config/rez/rezconfig.py"
export PATH="/usr/local/opt/llvm/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/llvm/lib"
#export CPPFLAGS="-I/usr/local/opt/llvm/include"
#make build-xcode-pmp-framework && sh sh/export_framework.sh

alias conda_activate='source ~/Documents/packages/anaconda3/bin/activate'
alias conda_nitro='conda_activate && conda activate nitro'
