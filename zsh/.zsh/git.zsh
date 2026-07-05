function fbr() {
  local branches branch
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +s +m -e) &&
  git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

function co() {
    git branch -a | grep -v remotes | grep $1 | xargs git checkout
}

function gnuke() {
    git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}
