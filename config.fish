function dus
    du -had1 $argv | sort -hk1
end

set fish_greeting

alias vim=nvim
alias df="df -h"
alias du="du -h"
alias la="ls -alh"
alias mv="mv -i"
alias cp="cp -r"

set -x LESS "-FX -Ri"
set -x EDITOR nvim
set -x DIFFPROG "nvim -d"
set -x NVIM_TUI_ENABLE_CURSOR_SHAPE 1

set fish_user_paths ~/.cargo/bin /usr/local/bin
