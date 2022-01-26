#Ask Password
#echo -n Password: 
#read -s password
#echo

#install AUR Helper (yay)

sudo git clone https://aur.archlinux.org/yay-git.git
echo "$USER"
sudo chown -R $USER:$USER ./yay-git
cd yay-git
yes | makepkg -si
yay -Syu


# Install Brave Web Broswer

yes | yay -S brave-bin

# Install LibreOffice (Still)

yes | sudo pacman -S libreoffice-still

# Install [Upgrade] VLC

yes | sudo pacman -S vlc

# Install mpv
yes | sudo pacman -S mpv

# Install [Upgrade] ffmpeg

yes | sudo pacman -S ffmpeg


# Install VSC (Visual Studio Code)

yay -S visual-studio-code-bin --noconfirm

# Install snap

git clone https://aur.archlinux.org/snapd.git
cd snapd
yes | makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap


# Install arduino

yes | sudo pacman -S arduino


# Install Scratch

flatpak install flathub edu.mit.Scratch -y

# Install Pipe-viewer

yay -S pipe-viewer-git --noconfirm

# Install Windows Font

yes | yay -S ttf-ms-win10

# Install Chinese Font


yes | sudo pacman -S wqy-microhei wqy-bitmapfont wqy-zenhei ttf-arphic-ukai ttf-arphic-uming adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk

# Install Typing Method (Fcitx)

yes | sudo pacman -S fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-chewing fcitx5-anthy fcitx5-hangul fcitx5-unikey fcitx5-libthai fcitx5-sayura
curl -L https://raw.githubusercontent.com/blusewill/SchoolLinux/main/.pam_environment -o ~/.pam_environment
curl -L https://raw.githubusercontent.com/blusewill/SchoolLinux/main/.xprofile -o ~/.xprofile