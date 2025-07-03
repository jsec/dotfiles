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

# direnv
eval "$(direnv hook zsh)"

# pipx
PATH="$HOME/.local/bin:$PATH"

# psql
PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# mysql
PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# zoxide
eval "$(zoxide init zsh)"
alias cd=z

# air
alias air='$(go env GOPATH)/bin/air'

# git branch autocompletion
autoload -Uz compinit && compinit

# case insensitive completions
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

# Google Cloud
if [ -f '/Users/jsec/.google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jsec/.google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/jsec/.google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jsec/.google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/jsec/.bun/_bun" ] && source "/Users/jsec/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/jsec/Library/pnpm"
PATH="$PNPM_HOME:$PATH"

export PATH
