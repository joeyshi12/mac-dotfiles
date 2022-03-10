export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export VISUAL="nvim"
export EDITOR="$VISUAL"

export NVM_DIR="$XDG_DATA_HOME/nvm"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -d ~/.local/bin ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi