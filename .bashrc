[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
EDITOR=vim

shopt -s checkwinsize histappend globstar

eval "$(lesspipe.sh)"

alias ls='ls --color=auto'
alias ll='ls -lh'
alias grep='grep --color=auto'

PS1='\[\e]0;\u@\h: \w\a\]\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
