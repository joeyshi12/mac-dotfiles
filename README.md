# mac-dotfiles

Personal configuration files for managing a developer environment in MacOS

## Installation

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew

```bash
xcode-select --install
```

2. Clone repo into hidden directory

```bash
git clone git@github.com:joeyshi12/mac-dotfiles ~/.dotfiles
```

3. Create symlinks

```bash
~/.dotfiles/bootstrap.sh
```

4. Install Homebrew, followed by the software list in the Brewfile

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file ~/.dotfiles/Brewfile
```

## Notes

- Export packages with `brew bundle dump --force`
- [Nord ports](https://www.nordtheme.com/ports)
- [Wallpaper](https://www.xfce-look.org/p/1904144)
