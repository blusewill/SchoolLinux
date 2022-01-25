# System Update
yes | pacman -Syu 

#install plasma
pacman -S xorg sddm plasma kde-applications --noconfirm

#enable System Boot by Default

systemctl enable sddm
systemctl enable NetworkManager

#Copy sddm (login manager) setttings

yes | pacman -Sy wget
wget https://raw.githubusercontent.com/blusewilll/SchoolLinux/main/default.conf -O /usr/lib/sddm/sddm.conf.d/default.conf

# Install yt-dlp

curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp

# Install Flatpak

yes | pacman -S flatpak