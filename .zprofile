export VISUAL="nvim"
export EDITOR="${VISUAL}"

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
export NVM_DIR="${XDG_DATA_HOME}/nvm"
export DOTNET_ROOT="${XDG_DATA_HOME}/dotnet"

eval "$(/opt/homebrew/bin/brew shellenv)"
PATH="/opt/homebrew/opt/openjdk@17/bin:${PATH}"
PATH="/opt/homebrew/opt/qt@5/bin:${PATH}"
PATH="/opt/homebrew/opt/pyqt@5/5.15.4_1/bin:${PATH}"
PATH="/opt/homebrew/opt/binutils/bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export LDFLAGS="-L/opt/homebrew/opt/binutils/lib"
export CPPFLAGS="-I/opt/homebrew/opt/binutils/include"
