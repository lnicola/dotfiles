export ZSH_AUTOSUGGEST_USE_ASYNC=1

if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

if [[ -s /etc/profile.d/vte.sh ]]; then
    source /etc/profile.d/vte.sh
fi

bindkey '\e^?' backward-kill-word

dus() {
    du -had1 "$@" | sort -hk1
}

alias vim=nvim
alias la="ls -alh"
alias mv="mv -i"
alias cp="cp -r"
alias rgi="rg -i"

#setopt combining_chars
setopt noflowcontrol

export PATH=$PATH:~/.cargo/bin

export CARGO_HOME=~/.cargo
export CARGO_INCREMENTAL=1

export LANG=en_GB.UTF-8
export LESS="-FX -Ri"
export EDITOR=nvim
export DIFFPROG="nvim -d"
export WORDCHARS=

stty -ixon
