# macos-dotfiles

Personal configuration files for managing a developer environment in MacOS.

## Installation

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew

```sh
xcode-select --install
```

2. Clone repo into hidden directory

```sh
git clone git@github.com:joeyshi12/macos-dotfiles ~/.dotfiles
```

3. Create symlinks

```sh
~/.dotfiles/bootstrap.sh
```

4. Install Homebrew, followed by the software list in the Brewfile

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file ~/.dotfiles/Brewfile
```
