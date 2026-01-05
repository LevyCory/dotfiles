# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

plugins=(
    git
    dirhistory
)

source $ZSH/oh-my-zsh.sh

# ctrl-x-e to edit command buffer
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Macros
bindkey -s '^xgc' 'git commit -m ""\c-b'
bindkey -s '^xgr' 'git rebase --interactive HEAD~'

# Redirect stderr to /dev/null
alias -g NE='2>/dev/null'

# Redirect stdout to /dev/null
alias -g NO='>/dev/null'

# Redirect both stdout and stderr to /dev/null
alias -g NUL='>/dev/null 2>&1'

# Pipe to jq
alias -g JQ='| jq'

hash -d ws='~/Workspace'
hash -d cfg='~/.config'
