if brew ls --versions coreutils > /dev/null; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi
