alias vim=nvim
export EDITOR='vim'

export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/.go
export GOBIN=$GOPATH/bin
export GHOSTTY_BIN=/Applications/Ghostty.app/Contents/MacOS
PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jsec/Applications:/usr/local/go/bin:$GOBIN:$GHOSTTY_BIN
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

# Bootstrap homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Prompt
eval "$(starship init zsh)"

# mise
eval "$(mise activate zsh)"

# pipx
PATH="$HOME/.local/bin:$PATH"

# psql
PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# zoxide
eval "$(zoxide init zsh)"
alias cd=z

# git branch autocompletion
autoload -Uz compinit && compinit

# case insensitive completions
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

# Work specific functionality
if [ -f ~/.zsh/env.zsh ]; then
    source ~/.zsh/env.zsh
fi

if [ -f ~/.zsh/git.zsh ]; then
    source ~/.zsh/git.zsh
fi

if [ -f ~/.zsh/functions.zsh ]; then
    source ~/.zsh/functions.zsh
fi

if [ -f ~/.zsh/fzf.zsh ]; then
    source ~/.zsh/fzf.zsh
fi

if [ -f ~/.zsh/aliases.zsh ]; then
    source ~/.zsh/aliases.zsh
fi

if [ -f ~/.zsh/tokens.zsh ]; then
    source ~/.zsh/tokens.zsh
fi

export PATH
