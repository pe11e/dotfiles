# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles
export VIMRC=$DOTFILES/.vim/vimrc
export DOTNET_ROOT=/usr/local/share/dotnet

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# nvm
export NVM_DIR="$HOME/.nvm"

# Node
export NODE_ENV=development
export BABEL_ENV=$NODE_ENV

# opencv4node
export OPENCV4NODEJS_DISABLE_AUTOBUILD=1

# Angular
export NG_CLI_ANALYTICS=ci

# C#
export ASPNETCORE_ENVIRONMENT="Development"

# cask
export PATH="$HOME/.cask/bin:$PATH"

export PATH="/usr/local/sbin:$PATH" >> ~/.zshrc

export PATH="$HOME/.local/bin:$PATH"

# Doom emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# Roswell
export PATH="$HOME/.roswell/bin:$PATH"

if [ -f $DOTFILES/zsh/.zshenvsecrets ]; then
    source $DOTFILES/zsh/.zshenvsecrets
else
    print "404: $DOTFILES/zsh/.zshenvsecrets  not found."
fi

