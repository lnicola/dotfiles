function __sk_history
    set -l query (commandline)
    set -l command

    if test -n $query
        history --search $query | sk --exact --tiebreak index -q $query | read command
    else
        history | sk --exact --tiebreak index | read command
    end

    if test -n "$command"
        commandline -rb (printf $command)
    end

    commandline -f repaint
end

set fish_user_paths ~/.cargo/bin /usr/local/bin

function fish_user_key_bindings
    command --search sk >/dev/null; and begin
        bind \cr __sk_history
    end
end

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
alias rgi="rg -i"

set -x LESS "-FX -Ri"
set -x EDITOR nvim
set -x DIFFPROG "nvim -d"
