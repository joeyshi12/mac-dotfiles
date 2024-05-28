export VISUAL="nvim"
export EDITOR="${VISUAL}"

# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_CACHE_HOME="${HOME}/.cache"

export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
export DOTNET_ROOT="${XDG_DATA_HOME}/dotnet"
export TLDR_CACHE_DIR="${XDG_CACHE_HOME}"

eval "$(/opt/homebrew/bin/brew shellenv)"
PATH="/opt/homebrew/opt/openjdk@17/bin:${PATH}"
PATH="/opt/homebrew/opt/binutils/bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
