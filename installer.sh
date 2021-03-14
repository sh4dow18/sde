#/bin/sh
sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server firefox alacritty code qtile rofi sed which feh picom

USER=/home/$1
echo -e "\n\nCargando Configuraciones...\n\n"
sleep 5


sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm

sudo mkdir $USER/.config
sudo cp -r settings/alacritty $USER/.config/
sudo mkdir $USER/backgrounds
sudo cp settings/start/Gracias.png $USER/backgrounds/
sudo cp settings/start/.xsession $USER/
sudo chmod u+x $USER/.xsession


echo -e "\n\nInstalacion Completada :D\n\n"