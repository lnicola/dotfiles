bindkey '\e^?' backward-kill-word

alias vim=nvim

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

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
