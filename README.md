# dotfiles
a place where i keep my config


## symlinks

Create symlinks

```
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv
```
## homebrew

Install homebrew and run `Brewfile`

```
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Run Brewfile
brew bundle --file ~/github/dotfiles/Brewfile
```
