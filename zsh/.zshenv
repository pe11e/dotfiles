export DOTFILES=$HOME/.dotfiles
export VIMRC=$DOTFILES/.vim/vimrc

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
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

# plugins & themes
if [ -d $DOTFILES/zsh/themes/spaceship-prompt ]; then
  source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
fi

if [ -d $DOTFILES/zsh/plugins ]; then
  source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
  source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $ZSH/plugins/zsh-completions/zsh-completions.plugin.zsh
fi

fpath=($ZSH/plugins/zsh-completions/src $fpath)

### --- Spaceship Config ------------------------------------

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  #vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

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

