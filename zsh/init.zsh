dotmods=(
  basic
  homebrew
  completions
  vim
  ruby
  python
  node
  prompts
  rails
  postgres
  heroku
)

for m in $dotmods
{
	. $DOTFILES/zsh/$m/init.zsh
}
