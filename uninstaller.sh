#!/bin/bash

sudo systemctl disable lightdm
sudo rm -r /etc/lightdm/

sudo pacman -Rs lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server firefox alacritty code qtile rofi which feh picom

USER=/home/$1
sudo rm -r $USER/.config $USER/backgrounds $USER/.xsession

echo -e "\n\nDesinstalacion Completada :D\n\n"