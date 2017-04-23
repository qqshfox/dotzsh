if [ -d $HOME/workspace/go ]; then
  export GOPATH=$HOME/workspace/go
fi

if [ -d $GOPATH ]; then
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:$GOBIN
fi
