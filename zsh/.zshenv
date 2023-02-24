export DOTFILES=$HOME/.dotfiles

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# zsh

# path to zsh
export ZSH=$DOTFILES/zsh

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

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

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

# Doom emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# Roswell
export PATH="$HOME/.roswell/bin:$PATH"

# awk
export PATH="/usr/local/opt/gawk/libexec/gnubin:$PATH"

