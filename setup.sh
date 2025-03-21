# Run this script to setup the basic environment

source ./gitSetup.sh

cat ./promptSetup.sh >> ~/.bashrc
cat ./bashFunctions.sh >> ~/.bashrc
echo 'source /usr/share/bash-completion/completions/git' >> ~/.bashrc
echo 'alias ls="ls --color=auto -a"' >> ~/.bashrc
echo 'alias grep="grep --color=auto"' >> ~/.bashrc
echo 'eval "$(zoxide init bash --cmd cd)"' >> ~/.bashrc
