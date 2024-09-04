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

# Binds ctrl left and right to left word and right word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# zsh autocompletions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# set up aliases
source ~/.zsh_aliases

# Set up fzf key bindings
eval $(fzf --zsh)
