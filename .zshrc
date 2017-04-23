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

export PATH=$PATH:~/.cargo/bin
export CARGO_HOME=~/.cargo
export RUST_NEW_ERROR_FORMAT=true

export LANG=en_GB.UTF-8
export LESS="-FX -Ri"
export EDITOR=nvim
export DIFFPROG="nvim -d"
export WORDCHARS=
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

if [[ ! -d ~/.zsh/zsh-autosuggestions ]]; then
    git clone -b develop --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
fi

if [[ -e ${ZDOTDIR:-${HOME}}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
