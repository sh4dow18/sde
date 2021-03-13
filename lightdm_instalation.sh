sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server
sudo cp settings/lightdm.config /etc/lightdm/
sudo systemctl enable lightdm
echo "Instalacion Completada :D"
