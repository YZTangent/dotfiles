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

zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

# Binds ctrl left and right to left word and right word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word

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
