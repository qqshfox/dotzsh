if (( $+commands[thefuck] )); then
  alias fuck='eval $(thefuck $(fc -ln | tail -n 2 |head -n 1)); fc -R'
fi
