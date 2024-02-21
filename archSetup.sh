# Prettify pacman output
sudo echo 'Color' > /etc/pacman.conf
sudo echo 'ILoveCandy' > /etc/pacman.conf

sudo pacman -Syu

# Install needed packages
pacman -S --needed git base-devel cmake gcc pacman-contrib zoxide emacs

# Setup paccache timer to clean temp files
sudo systemctl enable paccache.timer

# Setup yay
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb

sudo yay bash-git-prompt-git
