# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# history config
export HISTFILE=$DOTFILES/zsh/.zsh_history

# nvm
source $(brew --prefix nvm)/nvm.sh

# rbenv
eval "$(rbenv init -)"

# aliases
source $ZSH/aliases

# secrets
if [ -f $DOTFILES/zsh/.zshenvsecrets ]; then
  source $DOTFILES/zsh/.zshenvsecrets
else
  print "404: $DOTFILES/zsh/.zshenvsecrets  not found."
fi
