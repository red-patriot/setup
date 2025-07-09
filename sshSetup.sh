eval $(ssh-agent)
ssh-add ~/.ssh/rp-key

# Add key permenantly
echo "IdentityFile ~/.ssh/rp-key" >> ~/.ssh/config