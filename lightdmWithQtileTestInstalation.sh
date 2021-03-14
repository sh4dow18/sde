sudo pacman -Syu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server
sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm
sudo pacman -S qtile xterm

sudo pacman -S firefox alacritty code
cp -r settings/alacritty ~/.config/
sudo pacman -S rofi sed which
sudo pacman -S feh
mkdir ~/backgrounds
cp settings/start/Gracias.png ~/backgrounds/
cp settings/start/.xsessions ~/
sudo chmod u+x ~/.xsessions
sudo pacman -S picom
echo -e "\n\nInstalacion Completada :D\n\n"