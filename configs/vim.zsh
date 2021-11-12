if (( $+commands[nvim] )); then
    export EDITOR="nvim"
elif (( $+commands[mvim] )); then
    export EDITOR="mvim -v"
fi

if [ -n "$EDITOR" ]; then
  export GIT_EDITOR="$EDITOR"
  alias vim="$EDITOR"
fi

alias vimdiff="vim -d"
alias vi="vim"
