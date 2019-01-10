#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias vim=nvim
alias upgrade='sudo apt-get update && sudo apt-get upgrade'


NPM_PACKAGES=/home/jsec/.npm-global/bin
PIP_PACKAGES=/home/jsec/.local/lib/python3.6/site-packages
LOCAL_BINS=/home/jsec/bin
export GOPATH=/home/jsec/src/go
export GOBIN=/home/jsec/src/go/bin
export PATH="$NPM_PACKAGES:$PIP_PACKAGES:$GOBIN:$LOCAL_BINS:$PATH"

unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
