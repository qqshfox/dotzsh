if (( $+commands[nvim] )); then
    export EDITOR="nvim"
elif (( $+commands[mvim] )); then
    export EDITOR="mvim -v"
fi
export GIT_EDITOR="$EDITOR"

alias vim="$EDITOR"
alias vimdiff="vim -d"
alias vi="vim"
