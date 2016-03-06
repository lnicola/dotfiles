bindkey '\e^?' backward-kill-word

alias vim=nvim

#setopt combining_chars

export LANG=en_GB.UTF-8
export EDITOR=nvim
export WORDCHARS=

if [[ ! -d ~/.zsh/zsh-autosuggestions ]]; then
    git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
