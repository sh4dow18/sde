#!/bin/bash

# Created by Cyb3rHunter
# My Github: https://www.github.com/Cyb3rHunter
# My Gaming, Reactions and Computing Spanish Channel: https://www.youtube.com/RamgiD

# Removing Lightdm Configuration
sudo systemctl disable lightdm
sudo rm -r /etc/lightdm/

# Uninstalling Programs
sudo pacman -Rs lightdm lightdm-gtk-greeter lightdm-gtk-greeter xorg-server qtile alacritty rofi which feh firefox code picom gimp udiskie ntfs-3g xorg-xrandr vlc imv scrot thunar zip unzip xcb-util-cursor

# Creating User Home's Variable
USER=/home/$1

# Removing Config and Backgrounds Directories, also Startup Configuration File(.xsession) and Monitor Configuration Bash Script(.xrandr_monitor.sh)
sudo rm -r $USER/.config $USER/backgrounds $USER/.xsession $USER/.xrandr_monitor.sh

# Removing Black Theme and New Cursor
sudo rm -r /usr/share/theme/Material-Black-Blueberry/ /usr/share/icons/Material-Black-Blueberry-Suru/ $USER/gtkrc-2.0 /usr/share/icons/Breeze/ /usr/share/icons/default/index.theme

# Saying that the Uninstall has Finished
echo -e "\n\nDesinstalacion Completada :D\n\n"