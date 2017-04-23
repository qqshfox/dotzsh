if command -v nvim &>/dev/null; then
    alias vim="nvim"
elif command -v mvim &>/dev/null; then
    alias vim="mvim -v"
fi

alias vimdiff="vim -d"
alias vi="vim"
