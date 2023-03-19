alias ls="ls -G"
alias grep="grep --color=auto"
alias v="nvim"
alias sv="sudo -E nvim"
alias m="neomutt"

alias ga="git add"
alias gaa="git add --all"
alias grm="git rm --cached"
alias gb="git branch"
alias gba="git branch --all"
alias gc="git commit -vm"
alias gca="git commit -vam"
alias gcl="git clone --recurse-submodules"
alias gl="git pull"
alias gup="git pull --rebase"
alias gp="git push"
alias gf="git fetch"
alias gco="git checkout"
alias gst="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias glg="git log --graph"

alias t="tmux"
alias ta="tmux attach-session"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"

# Compiles and executes C file and removes binary
# $1 path to the C file
crun() {
    gcc "$1" && ./a.out "${@:2}" && rm a.out
}

# Runs lf and changes user to current lf directory on quit
lf() {
    [ ! -d "${XDG_CACHE_HOME}/lf" ] && mkdir -p "${XDG_CACHE_HOME}/lf"
    local target="${XDG_CACHE_HOME}/lf/lfdir"
    /opt/homebrew/bin/lf -last-dir-path $target
    cd "$(cat $target)"
}
