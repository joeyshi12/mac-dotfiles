alias ls='ls -G'
alias grep='grep --color=auto'
alias v='nvim'
alias sv='sudo -E nvim'

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gcl='git clone --recurse-submodules'
alias gl='git pull'
alias gup='git pull --rebase'
alias gp='git push'
alias gf='git fetch'
alias gco='git checkout'
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias glg='git log --graph'

alias t='tmux'
alias ta='tmux attach-session'
alias tl='tmux list-sessions'
alias tk='tmux kill-session'

# Compiles and executes C file and removes binary
# $1 path to the C file
crun() {
    gcc $1 && ./a.out && rm a.out
}

# Runs ranger and changes user to current ranger directory on quit
r() {
    local target=~/.cache/ranger/rangerdir
    ranger --choosedir=$target
    cd "$(cat $target)"
}

# Zips given directory into a tar file
# $1 path to the directory
tarzip() {
    if [ -d "$1" ]; then
        local file_name="$(basename $1).tar.gz"
        tar -czvf $file_name $1
    else
        echo "Error: cannot find directory at $1"
    fi
}
