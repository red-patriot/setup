# Get the latest version of git
sudo apt-add-repository ppa:git-core/ppa
sudo apt update -y

sudo apt install git -y
sudo apt install kdiff3 -y

# Set up git config
cat gitconfig > ~/.gitconfig
