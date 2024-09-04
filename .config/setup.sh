# adapted from https://www.atlassian.com/git/tutorials/dotfiles

git init --bare $HOME/.config
echo "alias config='/usr/bin/git --git-dir=$HOME/.config --work-tree=$HOME'" >>.zsh_aliases
source .zshrc
config config --local status.showUntrackedFiles no
