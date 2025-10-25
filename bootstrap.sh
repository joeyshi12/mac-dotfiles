#!/bin/sh

DOTFILES="${HOME}/.dotfiles"
mkdir -p "${HOME}/.config"

pushd "${DOTFILES}"
for file in .config/* .zshenv; do
    ln -sfn "${DOTFILES}/${file}" "${HOME}/${file}"
    echo "Linked ${HOME}/${file}"
done
popd

echo "Finished bootstrapping dotfiles"
