source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Install bundles from the default repo (oh-my-zsh)
antigen bundle command-not-found

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Load a theme
antigen theme dpoggi

# Apply
antigen apply

export EDITOR=nvim

export PATH=$PATH:$HOME/Projects/Dotfiles/arcanist/bin

