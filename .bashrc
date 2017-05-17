#export PATH=$PATH:/afs/andrew/course/15/122/bin
#alias coin='rlwrap coin'
#PATH="${PATH}:/afs/andrew/course/15/150/bin"; export PATH

#kinit; aklog cs.cmu.edu

PATH="${PATH}:/afs/cs.cmu.edu/academic/class/15410-s17/bin"; export PATH

alias 122='cd ~/private/15122'
alias 213='cd ~/private/15213'
alias os='cd ~/private/15410/'
#alias os='cd /afs/cs.cmu.edu/academic/class/15410-s17/usr/; kinit; aklog cs.cmu.edu; cd esahn/scratch/os-p2/'
alias os_handin='cd /afs/cs.cmu.edu/academic/class/15410-s17/usr/; kinit; aklog cs.cmu.edu; cd esahn'
alias s='simics46'

#export PS1="\e[0;31m[\u@\h \W]\$ \e[m "
#export PS1="\e[0;31m[\u@\h \W]\$ \e[m"
PS1='\[\033[38;5;1m\][\u@\h \W]\[\033[0m\] '

LS_COLORS=$LS_COLORS:'*.tar=0;32:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.tgz=0;32:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.sml=0;35:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.c=0;35:' ; export LS_COLORS
