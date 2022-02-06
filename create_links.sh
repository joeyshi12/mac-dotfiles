#!/bin/bash

dir="$HOME/dotfiles"

dotfiles=(
    ".config/nvim"
    ".config/ranger"
    ".zshrc"
    ".zsh_aliases"
    ".tmux.conf"
    ".pylintrc"
)

for file in "${dotfiles[@]}"; do
    source="$dir/$file"
    target="$HOME/$file"

    if [[ -e "$target" ]]; then
        echo "$target exists. Replace? (y/n)"
        read ans
        if [[ $ans == "y" ]]; then
            rm -r $target
            echo "replaced $target"
        else
            echo "skipping $file"
            continue
        fi
    fi

    ln -s $source $target
done
