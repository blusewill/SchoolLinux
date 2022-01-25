
#install AUR Helper (yay)

sudo git clone https://aur.archlinux.org/yay-git.git
echo "$USER"
sudo chown -R $USER:$USER ./yay-git
cd yay-git
yes | makepkg -si
yay -Syu
