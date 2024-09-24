# Install zoxide
sudo apt install curl -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# Activate zoxide
echo 'eval "$(zoxide init bash --cmd cd)"' >> ~/.bashrc
