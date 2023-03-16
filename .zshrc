# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

HISTSIZE=2000
SAVEHIST=2000
HISTFILE="${XDG_DATA_HOME}/zsh_history"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "${HOME}/.cache/zsh/zcompdump-${ZSH_VERSION}"
_comp_options+=(globdots)		# Include hidden files.

# Vim-like key-bindings
set -o vi
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

[ -f ~/.dotfiles/.p10k.zsh ] && source ~/.dotfiles/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.dotfiles/.aliases.zsh ] && source ~/.dotfiles/.aliases.zsh
[ -f ~/.dotfiles/.fzf.zsh ] && source ~/.dotfiles/.fzf.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
