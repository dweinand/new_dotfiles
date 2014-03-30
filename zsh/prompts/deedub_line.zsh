. $DOTFILES/zsh/prompts/vcs.zsh

zstyle ':vcs_info:*+set-message:*' hooks vcs2sym

zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'

zstyle ':vcs_info:*' formats  "%s %b %c%u%f"
zstyle ':vcs_info:*' actionformats "%s %b|%a %c%u"

ZLE_RPROMPT_INDENT=0

. $DOTFILES/zsh/prompts/line.zsh

