if command -v nvim &>/dev/null; then
    export EDITOR="nvim"
elif command -v mvim &>/dev/null; then
    export EDITOR="mvim -v"
fi
export GIT_EDITOR="$EDITOR"

alias vim="$EDITOR"
alias vimdiff="vim -d"
alias vi="vim"
