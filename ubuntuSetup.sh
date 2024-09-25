# Setup git
source ./gitSetup.sh

# Install Packages
sudo apt install emacs -y
sudo apt install guake -y
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install cmake -y

# Set up git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cp RP.bgptheme ~/.bash-git-prompt/themes/

# Set up zoxide
source cdSetup.sh 

# Update bashrc information
cat bashrc-fill >> ~/.bashrc
