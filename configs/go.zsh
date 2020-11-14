if [ -d $HOME/workspace/go ]; then
  export GOPATH=$HOME/workspace/go
fi

if [ -d $GOPATH ]; then
  export PATH=$PATH:$GOPATH/bin
fi

export GOPROXY="https://goproxy.cn,https://goproxy.io,direct"
