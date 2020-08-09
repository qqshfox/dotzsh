case $OSTYPE in
    linux*)
        alias ls='ls --color=auto'
        ;;
    darwin* | freebsd*)
        if brew ls --versions coreutils > /dev/null; then
            alias ls='ls --color=auto'
        else
            export CLICOLOR=1 LSCOLORS="ExGxFxDxCxDxDxhbhdacEc"
        fi
        ;;
esac
