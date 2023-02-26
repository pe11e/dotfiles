# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

autoload -Uz compinit && compinit

# history config
export HISTFILE=$DOTFILES/zsh/.zsh_history

# nvm
source $(brew --prefix nvm)/nvm.sh

# rbenv
eval "$(rbenv init -)"

# aliases
source $ZSH/aliases

# git settings
source $ZSH/settings/git.zsh

# Setup plugins
if [ -d $ZSH/plugins ]; then
  source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
  source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $ZSH/plugins/fzf-tab/fzf-tab.plugin.zsh
fi

# secrets
if [ -f $DOTFILES/zsh/.zshenvsecrets ]; then
  source $DOTFILES/zsh/.zshenvsecrets
else
  print "404: $DOTFILES/zsh/.zshenvsecrets  not found."
fi

# Setup Starship
eval "$(starship init zsh)"

# install fzf keybindings etc
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
else
  $(brew --prefix)/opt/fzf/install
fi
