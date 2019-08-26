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

alias rllab='cd ~/Documents/university/research/rllab'
alias seuss_scp='scp -r esahn@seuss.ri.cmu.edu:~/modules/rllab/data/local/experiment/* ~/Documents/university/research/rllab/data/cluster'

alias runconda='source ~/Documents/packages/anaconda2/bin/activate'
alias noconda='source deactivate'
alias runconda3='source ~/Documents/packages/anaconda2/bin/activate; conda activate py3env'
alias noconda3='conda deactivate; source deactivate'
alias runhw3='source ~/Documents/packages/anaconda3/bin/activate; conda activate seq2seq'
alias nohw3='conda deactivate; source deactivate'
alias rlactivate='runconda; source activate rllab3; export PYTHONPATH=/Users/edwardahn/Documents/university/research/rllab:$PYTHONPATH'
alias rldeactivate='source deactivate; source deactivate'
alias seuss='ssh esahn@seuss.ri.cmu.edu'
