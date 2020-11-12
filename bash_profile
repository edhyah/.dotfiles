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
alias rlenv='source /Users/edwardahn/Documents/envs/rlenv/bin/activate'

alias bulletenv='source /Users/edwardahn/Documents/envs/bullet/bin/activate; export PYTHONPATH=$PYTHONPATH:~/Documents/packages/bullet3/build_cmake/examples/pybullet'

# TDG Rez configuration
export PATH="/usr/local/apps/rez/_core/2.18.0-a0/osx/bin/rez:/Volumes/TDG-CCT/pipeline/packages/rez/_core/2.18.0/osx/bin/rez:$PATH"
export REZ_CONFIG_FILE="/Volumes/TDG-CCT/pipeline/config/rez/rezconfig.py"
export PATH="/usr/local/opt/llvm/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/llvm/lib"
#export CPPFLAGS="-I/usr/local/opt/llvm/include"
#make build-xcode-pmp-framework && sh sh/export_framework.sh

alias conda_activate='source ~/Documents/packages/anaconda3/bin/activate'
alias conda2_activate='source ~/Documents/packages/anaconda3/bin/activate'
alias conda_nitro='conda_activate && conda activate nitro'
alias rllab='conda_activate && source activate rllab3'

# Use brew's python
export PATH=/opt/brew//Cellar/python@3.8/3.8.4/libexec/bin:/opt/brew/bin:$PATH

# added by Anaconda2 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/edwardahn/Documents/packages/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/Users/edwardahn/Documents/packages/anaconda2/etc/profile.d/conda.sh" ]; then
#        . "/Users/edwardahn/Documents/packages/anaconda2/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/Users/edwardahn/Documents/packages/anaconda2/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<
