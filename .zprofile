export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

export VISUAL="nvim"
export EDITOR="$VISUAL"

export NVM_DIR="${XDG_DATA_HOME}/nvm"
export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"
export SQLITE_HISTORY="${XDG_DATA_HOME}/sqlite_history"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
PATH="/opt/homebrew/opt/pyqt@5/5.15.4_1/bin:$PATH"
PATH="/opt/homebrew/opt/binutils/bin:$PATH"
PATH="${HOME}/.local/bin:${PATH}"

export LDFLAGS="-L/opt/homebrew/opt/binutils/lib"
export CPPFLAGS="-I/opt/homebrew/opt/binutils/include"
