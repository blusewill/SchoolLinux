# System Update
yes | pacman -Syu 

#install plasma
pacman --needed xorg sddm plasma kde-applications --noconfirm

#enable System Boot by Default

systemctl enable sddm
systemctl enable NetworkManager

#Copy sddm (login manager) setttings

yes | pacman -Sy wget
wget https://raw.githubusercontent.com/blusewilll/SchoolLinux/main/default.conf -O /usr/lib/sddm/sddm.conf.d/default.conf

# Install yt-dlp

curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp

# Install snap

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap

# Install Flatpak

pacman -S flatpak