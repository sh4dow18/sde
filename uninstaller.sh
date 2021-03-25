#!/bin/bash

# Created by Cyb3rHunter
# My Github: https://www.github.com/Cyb3rHunter
# My Gaming, Reactions and Computing Spanish Channel: https://www.youtube.com/RamgiD

# Removing Lightdm Configuration
sudo systemctl disable lightdm
sudo rm -r /etc/lightdm/

# Creating User Home's Variable
USER=/home/$1

# Changing to the "Bash" shell
sudo chsh -s /bin/bash $1

# Uninstalling Programs
sudo pacman -Rsn lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xorg-server qtile alacritty rofi which feh firefox code picom gimp udiskie ntfs-3g xorg-xrandr vlc imv scrot thunar zip unzip xcb-util-cursor pacman-contrib openbox tint2 obconf exa fish

# Removing Config and Backgrounds Directories, also Startup Configuration File(.xsession) and Monitor Configuration Bash Script(.xrandr_monitor.sh)
sudo rm -r $USER/.config $USER/backgrounds $USER/.xsession $USER/.xrandr_monitor.sh

# Removing Rofi Theme
sudo rm /usr/share/rofi/themes/onedark.rasi

# Removing Black Theme and New Cursor
# sudo rm -r /usr/share/themes/Material-Black-Blueberry/ /usr/share/icons/Material-Black-Blueberry-Suru/ $USER/gtkrc-2.0
sudo rm -r /usr/share/icons/Breeze/ /usr/share/icons/default/*

# Removing "Bash" Configuration File
rm $USER/.bashrc

# Saying that the Uninstall has Finished
echo -e "\n\nUninstalation Completed :D\n\n"