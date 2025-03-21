# Removes all local branches which are no longer present on the remote
function ggone() {
  git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -rp git branch -D
}

# Retry a command until it succeeds
function retry() {
  "$@" || retry "$@"
}
