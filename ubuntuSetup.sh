# Setup git
source ./gitSetup.sh

# Install Packages
sudo apt install \
    emacs \
    guake \
    g++ \
    gcc \
    cmake \
    ninja-build \
    terminator \
    fonts-firacode \
    btop -y

# Set up git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cp RP.bgptheme ~/.bash-git-prompt/themes/

# Set up zoxide
source cdSetup.sh 

# Update bashrc information
cat bashrc-fill >> ~/.bashrc
