if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

bindkey '\e^?' backward-kill-word

alias vim=nvim
alias la="ls -alh"
alias dus="du -ad1 | sort -h -k1"
alias mc="mc -u"
alias mv="mv -i"
alias cp="cp -r"

#setopt combining_chars

export LANG=en_GB.UTF-8
export EDITOR=nvim
export DIFFPROG="nvim -d"
export WORDCHARS=
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

if [[ ! -d ~/.zsh/zsh-autosuggestions ]]; then
    git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
fi

if [[ -e ${ZDOTDIR:-${HOME}}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
