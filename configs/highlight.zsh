function hl() {
  if [ -z "$2" ]; then
    src="pbpaste"
  else
    src="cat $2"
  fi
  bash -c "$src | highlight -O rtf --syntax $1 --font Inconsolata --style vampire --font-size 24 -W -J 55 -j 3 | pbcopy"
}
