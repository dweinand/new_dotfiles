# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Enable ls colors
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

# Detects the VCS and shows the appropriate sign
function vcs_char {
	git branch >/dev/null 2>/dev/null && echo '± ' && return
	hg root >/dev/null 2>/dev/null && echo '☿ ' && return
	svn info >/dev/null 2>/dev/null && echo '⚡ ' && return
	echo ''
}

# vcs info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git svn
zstyle ':vcs_info:*' get-revision false
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{green}*%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}*%f'
precmd () {
	zstyle ':vcs_info:git*' formats  "%F{blue}[$(vcs_char)%b%c%u%F{blue}]%f"
	zstyle ':vcs_info:git*' actionformats "[$(vcs_char)%b|%a%c%u]"
	vcs_info
}

# prompt
PROMPT='%F{green}%n%f@%F{blue}%m:%f${PWD/#$HOME/~} ${vcs_info_msg_0_}%f%# '
RPROMPT='%F{white}[%T]%f'