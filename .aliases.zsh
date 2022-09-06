alias ls='ls -G'
alias grep='grep --color=auto'
alias v='nvim'
alias sv='sudo -E nvim'

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -vm'
alias gca='git commit -vam'
alias gcl='git clone --recurse-submodules'
alias gl='git pull'
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
    gcc "$1" && ./a.out "${@:2}" && rm a.out
}

# Runs ranger and changes user to current ranger directory on quit
r() {
    local target=~/.cache/ranger/rangerdir
    ranger --choosedir=$target
    cd "$(cat $target)"
}
