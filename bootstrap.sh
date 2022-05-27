#!/bin/zsh

DOTFILES_DIR=${0:a:h}

dotfiles=(
    ".config/nvim"
    ".config/ranger"
    ".config/tmux"
    ".config/pylintrc"
    ".zprofile"
    ".zshrc"
    ".aliases.zsh"
)

for file in "${dotfiles[@]}"; do
    source="$dir/$file"
    target="$HOME/$file"
    ln -si "$DOTFILES_DIR/$file" "$HOME/$file"
done
