# Search bash history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

sync-server() {
  local current_branch
  current_branch=$(git rev-parse --abbrev-ref HEAD)

  git checkout develop
  git pull
  npm run migrate:up-all
  npm install

  if [[ "$current_branch" != "develop" ]]; then
    git checkout "$current_branch"
    git rebase develop
  fi
}
