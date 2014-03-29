if ((${+BREW_PREFIX})); then
  export PYTHON_SITE_PACKAGES=$BREW_PREFIX/lib/python2.7/site-packages
else if [[ -e /Library/Python/2.7 ]]
  export PYTHON_SITE_PACKAGES=/Library/Python/2.7/site-packages
fi
