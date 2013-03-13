zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on

fpath=(/usr/local/homebrew/share/zsh-completions $fpath)
fpath=($DOTFILES/zsh/completions $fpath)

autoload -U compinit
compinit
