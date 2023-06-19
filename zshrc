# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# For zsh-autosuggestions, run this first:
#   `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
plugins=(git fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##############
# My aliases #
##############

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

####################
# Markdown viewing #
####################

markdown() {
    if [ "$#" -ne 1 ]; then
        echo ""
        echo "Markdown viewer using grip"
        echo ""
        echo "Usage:"
        echo "  markdown <FILE>"
        echo ""
        return
    fi
    token=$(cat ~/.griptoken)
    python -m grip --pass "$token" -b "$1"
}

###############################
# Prompt (from Dracula theme) #
###############################

# Initialization {{{
source ~/.dotfiles/lib/async.zsh
autoload -Uz add-zsh-hook
setopt PROMPT_SUBST
async_init

ARROW_ICON=${ARROW_ICON:-➜}
PROMPT='%(1V:%F{yellow}:%(?:%F{green}:%F{red}))${ARROW_ICON}'

prompt_time_segment() {
    if [[ -z "$TIME_FORMAT" ]]; then
        TIME_FORMAT=" %-H:%M"

        # check if locale uses AM and PM
        if ! locale -ck LC_TIME | grep 'am_pm=";"' > /dev/null; then
            TIME_FORMAT=" %-I:%M%p"
        fi
    fi
    print -P "%D{$TIME_FORMAT}"
}

PROMPT+='%F{green}%B$(prompt_time_segment) '

prompt_context() {
    if [[ -n "${SSH_CONNECTION-}${SSH_CLIENT-}${SSH_TTY-}" ]] || (( EUID == 0 )); then
        echo '%n@%m '
    else
        echo '%n '
    fi
}

PROMPT+='%F{magenta}%B$(prompt_context)'

PROMPT+='%F{blue}%B%~ ' # Directory segment

# Async git segment

dracula_git_status() {
  cd "$1"

  local ref branch lockflag

  (( DRACULA_GIT_NOLOCK )) && lockflag="--no-optional-locks"

  ref=$(=git $lockflag symbolic-ref --quiet HEAD 2>/tmp/git-errors)

  case $? in
    0)   ;;
    128) return ;;
    *)   ref=$(=git $lockflag rev-parse --short HEAD 2>/tmp/git-errors) || return ;;
  esac

  branch=${ref#refs/heads/}

  if [[ -n $branch ]]; then
    echo -n "${ZSH_THEME_GIT_PROMPT_PREFIX}${branch}"

    local git_status icon
    git_status="$(LC_ALL=C =git $lockflag status 2>&1)"

    if [[ "$git_status" =~ 'new file:|deleted:|modified:|renamed:|Untracked files:' ]]; then
      echo -n "$ZSH_THEME_GIT_PROMPT_DIRTY"
    else
      echo -n "$ZSH_THEME_GIT_PROMPT_CLEAN"
    fi

    echo -n "$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

dracula_git_callback() {
  DRACULA_GIT_STATUS="$3"
  zle && zle reset-prompt
  async_stop_worker dracula_git_worker dracula_git_status "$(pwd)"
}

dracula_git_async() {
  async_start_worker dracula_git_worker -n
  async_register_callback dracula_git_worker dracula_git_callback
  async_job dracula_git_worker dracula_git_status "$(pwd)"
}

precmd() { print "" }

add-zsh-hook precmd dracula_git_async

PROMPT+='$DRACULA_GIT_STATUS'

ZSH_THEME_GIT_PROMPT_CLEAN=") %F{green}%B✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=") %F{yellow}%B✗ "
ZSH_THEME_GIT_PROMPT_PREFIX="%F{cyan}%B("
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%b"
# }}}

# ensure vi mode is handled by prompt
function zle-keymap-select zle-line-init-dracula {
    if [[ $KEYMAP = vicmd ]]; then
        psvar[1]=vicmd
    else
        psvar[1]=''
    fi

    zle reset-prompt
    zle -R
}

zle -N zle-line-init-dracula
zle -N zle-keymap-select

# Ensure effects are reset
PROMPT+='%f%b'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DISABLE_UPDATE_PROMPT=true

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8892a8"
