sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server
sudo cp settings/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm
sudo pacman -S qtile xterm
echo -e "\n\nInstalacion Completada :D\n\n"