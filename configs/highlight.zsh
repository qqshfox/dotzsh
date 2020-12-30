function hl() {
  if [ -z "$2" ]; then
    src="pbpaste"
  else
    src="cat $2"
  fi
  bash -c "$src | highlight -O rtf --syntax $1 --font 'Nerd Hack Font' --style base16/summerfruit-light --font-size 24 -W | pbcopy"
}
