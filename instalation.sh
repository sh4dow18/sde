#/bin/bash
sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server firefox alacritty code qtile rofi sed which feh picom


echo -e "\n\nCargando Configuraciones...\n\n"
sleep 5

sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm

sudo mkdir ~/.config
sudo cp -r settings/alacritty ~/.config/
sudo mkdir ~/backgrounds
sudo cp settings/start/Gracias.png ~/backgrounds/
sudo cp settings/start/.xsessions ~/
sudo chmod u+x ~/.xsessions


echo -e "\n\nInstalacion Completada :D\n\n"