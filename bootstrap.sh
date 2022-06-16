#!/bin/zsh

DOTFILES=(
    ".config/nvim"
    ".config/ranger"
    ".config/tmux"
    ".config/pylintrc"
    ".zprofile"
    ".zshrc"
)

for file in "${DOTFILES[@]}"; do
    ln -sfn "${0:a:h}/$file" "$HOME/$file"
done
