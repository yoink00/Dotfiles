source $HOME/Projects/Dotfiles/antigen/antigen.zsh

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

export EDITOR=vim

export PATH=$PATH:$HOME/Projects/Dotfiles/arcanist/bin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh