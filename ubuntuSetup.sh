# Setup git
source ./gitSetup.sh

# Install Emacs
sudo apt install emacs -y

# Set up git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cp RP.bgptheme ~/.bash-git-prompt/themes/
cat promptSetup.sh >> ~/.bashrc

# Set up zoxide
