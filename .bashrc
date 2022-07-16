# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# environment variables

export TERM=xterm-256color
export EDITOR=vi
export VISUAL=vi

export LESS_TERMCAP_mb="[35m" # magenta
export LESS_TERMCAP_md="[33m" # yellow
export LESS_TERMCAP_me="[0m" # "0m"
export LESS_TERMCAP_se="[0m" # "0m"
export LESS_TERMCAP_so="[34m" # blue
export LESS_TERMCAP_ue="[0m" # "0m"
export LESS_TERMCAP_us="[4m" # underline

# pager

if [[ -x /usr/bin/lesspipe ]]; then
    export LESSOPEN="| /usr/bin/lesspipe %s";
      export LESSCLOSE="/usr/bin/lesspipe %s %s";
fi

# dircolors

if type dircolors &>/dev/null; then
  if [[ -r "$HOME/.dircolors" ]]; then
   eval "$(dircolors -b "$HOME/.dircolors")"
  else
   eval "$(dircolors -b)"
  fi
fi

alias ls='ls -h --color=auto'

# bash shell options

shopt -s checkwinsize
shopt -s globstar

# history

set -o vi
shopt -s histappend

HISTSIZE=2000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth

# prompt

PROMPT_AT=@

__ps1() {
  local P='$' dir="${PWD##*/}" B countme short long double\
    r='\[\e[31m\]' g='\[\e[30m\]' h='\[\e[34m\]' \
    u='\[\e[33m\]' p='\[\e[34m\]' w='\[\e[35m\]' \
    b='\[\e[36m\]' x='\[\e[0m\]'

  B=$(git branch --show-current 2>/dev/null)
  [[ $dir = "$B" ]] && B=.
  countme="$USER@$(hostname):$dir($B)\$ "

  [[ $EUID == 0 ]] && P='#' && u=$r && p=$u # root
  [[ $PWD = / ]] && dir=/
  [[ $PWD = "$HOME" ]] && dir='~'

  [[ $B = master || $B = main ]] && b="$r"
  [[ -n "$B" ]] && B="$g($b$B$g)"

  # short="$u\u$g$PROMPT_AT$h\h$g:$w$dir$B$p$P$x "
  long="$g╔ $u\u$g$PROMPT_AT$h\h$g:$w$dir$B\n$g╚ $p$P$x "
  # double="$g╔ $u\u$g$PROMPT_AT$h\h$g:$w$dir\n$g║ $B\n$g╚ $p$P$x "

  PS1="$long"
}

PROMPT_COMMAND="__ps1"

# alias

alias '?'=duck
alias '??'=google

alias c='printf "\e[H\e[2J"'
alias clear='printf "\e[H\e[2J"'

alias 'pandoc'="pandoc.exe -sV geometry:margin=1in"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
