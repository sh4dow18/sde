#!/bin/bash

# Created by Cyb3rHunter
# My Github: https://www.github.com/Cyb3rHunter
# My Gaming, Reactions and Computing Spanish Channel: https://www.youtube.com/RamgiD

# Removing Lightdm Configuration
sudo systemctl disable lightdm
sudo rm -r /etc/lightdm/

# Uninstalling Programs
sudo pacman -Rs lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server qtile alacritty rofi sed which feh firefox code picom gimp

# Creating User Home's Variable
USER=/home/$1

# Removing Config and Backgrounds Directories, also Startup Configuration File(.xsession)
sudo rm -r $USER/.config $USER/backgrounds $USER/.xsession

# Saying that the Uninstall has Finished
echo -e "\n\nDesinstalacion Completada :D\n\n"