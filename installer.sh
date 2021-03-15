#!/bin/bash

# Created by Cyb3rHunter
# My Github: https://www.github.com/Cyb3rHunter
# My Gaming, Reactions and Computing Spanish Channel: https://www.youtube.com/RamgiD

# Installing System Updates
sudo pacman -Syu

# Installing Programs
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server qtile alacritty rofi sed which feh firefox code picom gimp

# Creating User Home's Variable
USER=/home/$1

# Installing Lightdm Configuration
sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm

# Creating Configuration Directory
sudo mkdir $USER/.config

# Installing Qtile Configuration
cp -r settings/qtile $USER/.config/

# Installing Alacritty Configuration
sudo cp -r settings/alacritty $USER/.config/

# Creating Backgrounds Directory
sudo mkdir $USER/backgrounds

# Installing Thank You for Install Background
cp settings/start/Gracias.png $USER/backgrounds/

# Installing Startup Configuration File (.xsession)
cp settings/start/.xsession $USER/
sudo chmod u+x $USER/.xsession

# Changing the new files owner
sudo chown -R $1:$1 $USER/.config
sudo chown -R $1:$1 $USER/backgrounds
sudo chown $1:$1 $USER/.xsession

# Saying that the Installation has finished
echo -e "\n\nInstalation Complete :D\n\n"