# dotfiles
a place where i keep my config

make sure to clone this repo to your home directory

## symlinks

Create symlinks

```
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv
```

## osx

Sane defaults for osx

```
./.osx
```

## homebrew

Install homebrew and run `Brewfile`

```
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Run Brewfile
brew bundle --file ~/github/dotfiles/Brewfile
```
