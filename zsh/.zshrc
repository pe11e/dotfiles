# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of thetheme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-pure"

# Locale setting
LANG="en_US.UTF-8"

# Pure
autoload -U promptinit; promptinit

PURE_CMD_MAX_EXEC_TIME=10

prompt lambda-pure

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  nvm
  docker
)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh

# rbenv
eval "$(rbenv init -)"

# ------------------------------------------------------- #
# Aliases
# ------------------------------------------------------- #

# Random
alias chrome-cert='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --ignore-certificate-errors &> /dev/null &'

# Emacs
alias emacsclient=ec

# Config
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias emacsconfig='emacs ~/.emacs.d'
alias vimrc="vim $VIMRC"

# use nvim insted of vim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# Git
alias ga='git add --all'
alias gc="git commit"
alias gca="git commit -a -m"
alias gs="git status"
alias gp="git push"
alias gu="git pull"
alias gd="clear && git diff | vim && git status"
alias gb="git branch"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gm="git merge"
alias gr="git rebase"
alias gri="git rebase -i"
alias grim="git rebase -i master"
alias grint="git rebase --interactive"
alias grinth="git rebase --interactive HEAD~"
alias grod="git push origin --delete"
alias fup="git reset --hard"
alias gl="git clone"
alias gd="git diff"
alias gdt="git difftool"
alias glg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias guo="git pull origin develop"
alias gpo="git push origin develop"
alias gap="git stash apply"

# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
