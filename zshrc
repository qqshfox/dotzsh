### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

setopt +o nomatch

for file in $HOME/.zsh/{configs,local}/**/*.zsh(.); source "$file" >/dev/null 2>&1

zinit lucid for \
 atload"base16_ocean" \
    chriskempson/base16-shell \
 from"gh-r" as"program" pick"starship" \
    starship/starship \
    scmbreeze/scm_breeze

eval "$(starship init zsh)"

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
 as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX" \
    tj/git-extras \
 from"gh-r" as"program" mv"fd* -> fd" pick"fd/fd" \
    @sharkdp/fd \
 from"gh-r" as"program" id-as"junegunn/fzf-bin" \
    junegunn/fzf \
 src"shell/key-bindings.zsh" \
    junegunn/fzf \
 src"init.sh" \
    b4b4r07/enhancd \
 as"program" pick"grc" src"grc.zsh" \
    garabik/grc \
 from"gh-r" as"program" pick"bin/exa" atload="alias ls=exa" \
    ogham/exa \
    OMZP::history \
    OMZP::thefuck \
    OMZP::ssh-agent \
    OMZP::aws \
 as"program" make"!" atclone"./direnv hook zsh > zhook.zsh" atpull"%atclone" src"zhook.zsh" \
    direnv/direnv \
    hlissner/zsh-autopair \
 as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat" \
    @sharkdp/bat \
 as"program" from"gh-r" mv"delta* -> delta" pick"delta/delta" \
    dandavison/delta
