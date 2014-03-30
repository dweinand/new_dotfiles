if which brew > /dev/null; then
  export BREW_PREFIX=`brew --repository`
  export PATH=$BREW_PREFIX/bin:$BREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH
  export MANPATH=$BREW_PREFIX/opt/coreutils/libexec/gnuman:$MANPATH
fi
