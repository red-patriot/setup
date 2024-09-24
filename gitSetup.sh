# Get the latest version of git
sudo apt-add-repository ppa:git-core/ppa
sudo apt update -y

nsudo apt install git -y

# Setup useful aliases that I like
git config --global alias.fap 'fetch --all --prune'
git config --global alias.pushfl 'push --force-with-lease'
git config --global alias.stats 'status'
git config --global alias.graph 'log --graph --all --format="%h %s%n    (%an, %ar)" --abbrev-commit'
git config --global alias.staash 'stash --all'
git config --global core.editor emacs
git config --global alias.gud '!python -m webbrowser https://git-scm.com/docs'
git config --global alias.last 'log -1'
git config --global alias.commitan 'commit --amend --no-edit'
git config --global alias.staash 'stash --all'

# Enable Reuse Recorded Resolution
git config --global rerere.enabled true
git config --global rerere.autoUpdate true

# Make displaying branches nicer
git config --global column.ui auto
git config --global branch.sort -committerdate
