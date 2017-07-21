source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Install bundles from the default repo (oh-my-zsh)
antigen bundle command-not-found

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Git
antigen bundle git

# Deer
antigen bundle Vifon/deer

# Load a theme
antigen theme dpoggi

# Apply
antigen apply

autoload -U deer
zle -N deer

bindkey -v
bindkey 'k' deer

export EDITOR=nvim

export PATH=$PATH:$HOME/Projects/Dotfiles/arcanist/bin

export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:"
