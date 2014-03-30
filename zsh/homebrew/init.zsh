if which brew > /dev/null; then
  export BREW_PREFIX=`brew --repository`
  export PATH=$BREW_PREFIX/bin:$PATH
fi
