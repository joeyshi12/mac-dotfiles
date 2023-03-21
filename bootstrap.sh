#!/bin/zsh

DOTFILES="${HOME}/.dotfiles"
cd "${DOTFILES}"

[ ! -d "${HOME}/.config" ] && mkdir -p "${HOME}/.config"
[ ! -d "${HOME}/.local/bin" ] && mkdir -p "${HOME}/.local/bin"

for file in .config/* .local/bin/* .zshrc .zprofile; do
    ln -sfn "${DOTFILES}/${file}" "${HOME}/${file}"
done
