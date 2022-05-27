#!/bin/zsh

dotfiles=(
    ".config/nvim"
    ".config/ranger"
    ".config/tmux"
    ".config/pylintrc"
    ".zprofile"
    ".zshrc"
)

for file in "${dotfiles[@]}"; do
    ln -sfn "${0:a:h}/$file" "$HOME/$file"
done
