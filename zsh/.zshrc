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

LOCAL_BINS=/home/jsec/bin
RUBY_GEMS=/home/jsec/.gem/ruby/2.6.0/bin
export GOPATH=/home/jsec/src/go
export GOBIN=/home/jsec/src/go/bin
export PATH="$RUBY_GEMS:$GOBIN:$LOCAL_BINS:$PATH"
