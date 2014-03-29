export RBENV_ROOT=$BREW_PREFIX/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rake="noglob rake"
alias be="bundle exec"
alias fr="foreman run"
