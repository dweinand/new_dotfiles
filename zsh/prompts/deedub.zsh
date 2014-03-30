. $DOTFILES/zsh/prompts/vcs.zsh

zstyle ':vcs_info:*+set-message:*' hooks vcs2sym

zstyle ':vcs_info:*' stagedstr '%F{green}*%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}*%f'

zstyle ':vcs_info:*' formats  "%F{blue}[%s %b%c%u%F{blue}]%f"
zstyle ':vcs_info:*' actionformats "[%s %b|%a%c%u]"

# prompt
PROMPT='%F{green}%n%f@%F{blue}%m:%f${PWD/#$HOME/~} ${vcs_info_msg_0_}%f%# '
RPROMPT='%F{white}[%T]%f'
