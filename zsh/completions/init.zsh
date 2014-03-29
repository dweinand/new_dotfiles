zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on

if ((${+BREW_PREFIX})); then fpath=($BREW_PREFIX/share/zsh-completions $fpath) fi
fpath=($DOTFILES/zsh/completions $fpath)

autoload -U compinit
compinit
