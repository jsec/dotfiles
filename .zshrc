# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval $(dircolors ~/.dircolors)

# Customize to your needs...
alias vim=nvim
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/home/jsec/.gem/ruby/2.1.0/bin:/usr/bin/core_perl:/home/jsec/src/go/bin"
export EDITOR='nvim'
export GOPATH='/home/jsec/src/go'
