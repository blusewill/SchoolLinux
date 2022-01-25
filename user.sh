
#install AUR Helper (yay)

sudo git clone https://aur.archlinux.org/yay-git.git
echo "$USER"
sudo chown -R $USER:$USER ./yay-git
cd yay-git
yes | makepkg -si
yay -Syu


# Install Brave Web Broswer

yes | yay -S brave-bin
i
# Install LibreOffice (Still)

yes | yay -S libreoffice-Still

# Install [Upgrade] VLC

yes | yay -S vlc

# Install mpv
yes | yay -S mpv

# Install [Upgrade] ffmpeg

yes | yay -S ffmpeg


# Install VSC (Visual Studio Code)

yay -S visual-studio-code-bn --noconfirm

# Install snap

git clone https://aur.archlinux.org/snapd.git
cd snapd
yes | makepkg -si
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap

# Install arduino

sudo snap install arduino

# Install Scratch

flatpak install flathub edu.mit.Scratch

# Install Pipe-viewer

yay -S pipe-viewer-git --noconfirm

