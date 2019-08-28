stty -ixon

# Prompt customization
PS1='\[\e[1;91m\][\u@\h \W]\$\[\e[0m\] '

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
