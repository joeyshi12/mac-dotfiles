#!/bin/zsh

DOTFILES="${HOME}/.dotfiles"

mkdir -p "${HOME}/.config"
for file in $(ls "${DOTFILES}/.config"); do
    ln -sfn "${DOTFILES}/.config/${file}" "$HOME/.config/${file}"
done

mkdir -p "${HOME}/.local/bin"
for file in $(ls "${DOTFILES}/.local/bin"); do
    ln -sfn "${DOTFILES}/.local/bin/${file}" "$HOME/.local/bin/${file}"
done
