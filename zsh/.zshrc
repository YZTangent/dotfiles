# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yuanzheng/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alt+Backspace
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
    zle -f kill  # Ensures that after repeated backward-kill-dir, Ctrl+Y will restore all of them.
}

# Backspace only deletes one directory level at a time.
# Only for linux, this behaviour is default for mac opt + backspace 
# zle -N backward-kill-dir
# bindkey '^[^?' backward-kill-dir

# History settings
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Binds ctrl left and right to left word and right word
bindkey "˚" forward-word
bindkey "∆" backward-word
bindkey "^H" backward-kill-word
bindkey "" history-search-backward
bindkey "Ô" history-search-forward

# Starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# zsh autocompletions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# set up aliases
source ~/.zsh_aliases

# Set up fzf key bindings
eval $(fzf --zsh)

# go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yuanzheng/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yuanzheng/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yuanzheng/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yuanzheng/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
