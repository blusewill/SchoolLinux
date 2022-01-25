# System Update
yes | pacman -Syu 

#install plasma
pacman --needed xorg sddm plasma kde-applications --noconfirm

#enable System Boot by Default

systemctl enable sddm
systemctl enable NetworkManager

#Copy sddm (login manager) setttings

yes | pacman -Sy wget
rm /usr/lib/sddm/sddm.conf.d/default.conf
mv default.conf /usr/lib/sddm/sddm.conf.d/default.conf
