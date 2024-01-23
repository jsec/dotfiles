alias vim=nvim
alias mux=tmuxinator
export EDITOR='vim'

export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jarrod.seccombe/.go
export GOBIN=$GOPATH/bin
PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jarrod.seccombe/Applications:/usr/local/go/bin:$GOBIN:/usr/local/share/dotnet
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'

ulimit -n 16348

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# git branch completion
autoload -Uz compinit && compinit

# Bootstrap homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Prompt
eval "$(starship init zsh)"

# Volta
export VOLTA_HOME="$HOME/.volta"
PATH="$VOLTA_HOME/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init - zsh)"
PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# direnv
eval "$(direnv hook zsh)"

# pipx
PATH="$HOME/.local/bin:$PATH"

export PATH
