# vcs info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git svn
zstyle ':vcs_info:*' get-revision false
zstyle ':vcs_info:*' check-for-changes true

# Call vcs_info as precmd before every prompt.
vcs_precmd() {
  vcs_info
}
add-zsh-hook precmd vcs_precmd

function +vi-vcs2sym() {
  [[ ${hook_com[vcs_orig]} == git ]] && hook_com[vcs]='±'
  [[ ${hook_com[vcs_orig]} == hg ]] && hook_com[vcs]='☿'
  [[ ${hook_com[vcs_orig]} == svn ]] && hook_com[vcs]='⚡'
}

