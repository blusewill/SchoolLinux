yes | pacman -Syu 
yes | pacman --needed xorg sddm plasma kde-applications
systemctl enable sddm
systemctl enable NetworkManager
