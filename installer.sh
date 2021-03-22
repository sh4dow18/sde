#!/bin/bash

echo -e "\e[1;32m     _____                _           _   _"
echo -e "\e[1;32m    / ____|              | |         | | | |            _" 
echo -e "\e[1;32m   | |     _ __ ___  __ _| |_ ___  __| | | |__  _   _  (_)"
echo -e "\e[1;32m   | |    | '__/ _ \\/ _` | __/ _ \\/ _` | | '_ \\| | | |"
echo -e "\e[1;32m   | |____| | |  __/ (_| | ||  __/ (_| | | |_) | |_| |  _" 
echo -e "\e[1;32m    \\_____|_|  \\___|\\__,_|\\__\\___|\\__,_| |_.__/ \\__, | (_)"
echo -e "\e[1;32m                                                 __/ |"
echo -e "\e[1;32m                                                |___/ "                                                                             

echo -e "\e[1;36m   _______           ______   ______   _______                    _       _________ _______  _______ "
echo -e "\e[1;36m  (  ____ \\|\\     /|(  ___ \\ / ___  \\ (  ____ )|\\     /||\\     /|( (    /|\\__   __/(  ____ \\(  ____ )"
echo -e "\e[1;36m  | (    \\/( \\   / )| (   ) )\\/   \\  \\| (    )|| )   ( || )   ( ||  \\  ( |   ) (   | (    \\/| (    )|"
echo -e "\e[1;36m  | |       \\ (_) / | (__/ /    ___) /| (____)|| (___) || |   | ||   \ | |   | |   | (__    | (____)|"
echo -e "\e[1;36m  | |        \\   /  |  __ (    (___ ( |     __)|  ___  || |   | || (\\ \\) |   | |   |  __)   |     __)"
echo -e "\e[1;36m  | |         ) (   | (  \\ \\       ) \\| (\\ (   | (   ) || |   | || | \   |   | |   | (      | (\\ ("   
echo -e "\e[1;36m  | (____/\\   | |   | )___) )/\\___/  /| ) \\ \\__| )   ( || (___) || )  \\  |   | |   | (____/\\| ) \\ \\__"
echo -e "\e[1;36m  (_______/   \\_/   |/ \___/ \\______/ |/   \\__/|/     \\|(_______)|/    )_)   )_(   (_______/|/   \\__/"

echo -e "\e[1;35mMy Github:"
echo -e "\e[1;33mhttps://www.github.com/Cyb3rHunter\n"

echo -e "\e[1;35mMy Gaming, Reactions and Computing"
echo -e "\e[1;35mSpanish Channel:"
echo -e "\e[1;33mhttps://www.youtube.com/RamgiD\n"

# Installing System Updates
sudo pacman -Syu

# Installing Programs
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xorg-server qtile alacritty rofi sed which feh firefox code picom gimp udiskie ntfs-3g xorg-xrandr vlc imv scrot thunar zip unzip xcb-util-cursor pacman-contrib openbox tint2 obconf exa fish

# Creating User Home's Variable
USER=/home/$1

# Installing Lightdm Configuration
sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm

# Creating Configuration Directory
sudo mkdir $USER/.config

# Installing Qtile Configuration
cp -r settings/qtile $USER/.config/

# Installing OpenBox Configuration
cp -r settings/OpenBox/RookieMode/openbox/ $USER/.config/
cp -r settings/OpenBox/RookieMode/tint2/ $USER/.config/

# Installing Alacritty Configuration
sudo cp -r settings/alacritty $USER/.config/

# Creating Backgrounds Directory
sudo mkdir $USER/backgrounds

# Installing Thank You for Install Background
cp settings/start/Thanks.png $USER/backgrounds/

# Installing Startup Configuration File (.xsession)
cp settings/start/.xsession $USER/
sudo chmod u+x $USER/.xsession

# Installing Monitor Configuration Bash Script
cp settings/start/.xrandr_monitor.sh $USER/
sudo chmod u+x $USER/.xrandr_monitor.sh

# Installing Rofi Menu Configuration
sudo cp settings/rofi/onedark.rasi /usr/share/rofi/themes/
mkdir $USER/.config/rofi
cp settings/rofi/config $USER/.config/rofi/

# Installing Bash Configuation File
cp settings/start/.bashrc $USER/

# Installing Black Theme
# sudo unzip settings/gtk/theme/Material-Black-Blueberry.zip
# sudo unzip settings/gtk/icons/Material-Black-Blueberry-Suru.zip
# sudo rm -r /usr/share/themes/*
# sudo cp -r Material-Black-Blueberry/ /usr/share/themes/
# sudo rm -r Material-Black-Blueberry/
# sudo mv Material-Black-Blueberry-Suru/ /usr/share/icons/
# cp settings/gtk/install/gtkrc-2.0 $USER/
# mkdir $USER/.config/gtk-3.0
# cp settings/gtk/install/settings.ini $USER/.config/gtk-3.0/

# Installing New Cursor
sudo tar -xf settings/gtk/cursor/Breeze.tar.gz
sudo mv Breeze/ /usr/share/icons/
sudo cp settings/gtk/cursor/index.theme /usr/share/icons/default/

# Changing the new files owner
sudo chown -R $1:$1 $USER/.config
sudo chown -R $1:$1 $USER/backgrounds
sudo chown $1:$1 $USER/.xsession
sudo chown $1:$1 $USER/.xrandr_monitor.sh
# sudo chown -R $1:$1 /usr/share/themes/Material-Black-Blueberry/
# sudo chown -R $1:$1 /usr/share/icons/Material-Black-Blueberry-Suru/
# sudo chown $1:$1 $USER/gtkrc-2.0
sudo chown $1:$1 /usr/share/rofi/themes/onedark.rasi

# Changing to the "Fish" shell and Installing "Fish" Configuration
sudo chsh -s /bin/fish $1
cp -r settings/fish $USER/.config

# Saying that the Installation has finished
echo -e "\n\nInstalation Completed :D\n\n"