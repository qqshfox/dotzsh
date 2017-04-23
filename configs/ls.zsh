case $OSTYPE in
    linux*)
        alias ls='ls --color=auto'
        ;;
    darwin* | freebsd*)
        export CLICOLOR=1 LSCOLORS="ExGxFxDxCxDxDxhbhdacEc"
        ;;
esac
