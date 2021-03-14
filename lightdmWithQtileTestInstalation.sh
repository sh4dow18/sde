sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server firefox alacritty code qtile rofi sed which feh picom


echo -e "\n\nCargando Configuraciones...\n\n"
sleep 5

sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm

mkdir ~/.config
cp -r settings/alacritty ~/.config/
mkdir ~/backgrounds
cp settings/start/Gracias.png ~/backgrounds/
cp settings/start/.xsessions ~/
sudo chmod u+x ~/.xsessions


echo -e "\n\nInstalacion Completada :D\n\n"