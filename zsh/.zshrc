alias vim=nvim
export EDITOR='vim'

export DISABLE_AUTO_TITLE=true
export GOPATH=/Users/jsec/.go
export GOBIN=$GOPATH/bin
PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/sbin:/Users/jsec/Applications:/usr/local/go/bin:$GOBIN
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color=never --glob "!{.git,node_modules,bin}"'

# Support coloring in ls commands without the use of a framework
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

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

# Nimble (Nim)
PATH="$HOME/.nimble/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# pipx
PATH="$HOME/.local/bin:$PATH"

export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jsec/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jsec/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jsec/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jsec/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
