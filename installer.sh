#!/bin/bash

# Version 3.0

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update && sudo apt upgrade -y && sudo apt autoremove

sudo apt install xserver-xorg xorg xinit lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings vlc zip unzip scrot rofi udiskie ntfs-3g exa fish pulseaudio pavucontrol neofetch feh x11-xserver-utils bat lxappearance alacritty code python3-pip python3-xcffib python3-cairocffi libpangocairo-1.0-0
sudo pip install --no-cache-dir qtile

# Creating User Home's Variable
user=$(who | head -n 1 | cut -d " " -f 1)
HOME=/home/$user

# Creating Configuration Directory
sudo mkdir $HOME/.config 2> /dev/null

echo -e "\e[1;35m\n	- Changing Fonts"
mkdir $HOME/.local 2> /dev/null
mkdir $HOME/.local/share 2> /dev/null
cp -r settings/fonts/ $HOME/.local/share/
fc-cache -f

echo -e "\e[1;31m\n	- Installing Lightdm Configuration"
sudo mkdir /usr/share/xsessions 2> /dev/null
sudo systemctl enable lightdm 2> /dev/null
sudo cp settings/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/
sudo mkdir /usr/share/pictures 2> /dev/null
sudo cp settings/lightdm/epic.jpg /usr/share/pictures/ 2> /dev/null
sudo cp settings/lightdm/user.png /usr/share/pictures/ 2> /dev/null

echo -e "\e[1;32m\n	- Installing Qtile Configuration"

# Installing Qtile Configuration
cp -r settings/qtile $HOME/.config/
sudo cp settings/start/Sh4dows-Desktop-Environment.desktop /usr/share/xsessions/
sudo cp settings/start/qtile /etc/X11/

echo -e "\e[1;33m\n	- Installing Alacritty Configuration"

# Installing Alacritty Configuration
sudo cp -r settings/alacritty $HOME/.config/ 2> /dev/null

echo -e "\e[1;34m\n	- Installing Rofi Configuration"

# Installing Rofi Menu Configuration
sudo cp settings/rofi/onedark.rasi /usr/share/rofi/themes/ 2> /dev/null
mkdir $HOME/.config/rofi 2> /dev/null
cp settings/rofi/config $HOME/.config/rofi/ 2> /dev/null

echo -e "\e[1;35m\n	- Installing Fish Configuration"

# Changing to the "Fish" shell and Installing "Fish" Configuration
sudo chsh -s /bin/fish $user > /dev/null
mkdir $HOME/.config/fish 2> /dev/null
cp settings/fish/config.fish $HOME/.config/fish 2> /dev/null

echo -e "\e[1;31m\n	- Installing Black Themes"

# Installing Black Theme for Qtile
sudo unzip settings/gtk/theme/Material-Black-Blueberry.zip > /dev/null
sudo unzip settings/gtk/icons/Material-Black-Blueberry-Suru.zip > /dev/null
sudo cp -r Material-Black-Blueberry/ /usr/share/themes/ 2> /dev/null
sudo rm -r Material-Black-Blueberry/ 2> /dev/null
sudo mv Material-Black-Blueberry-Suru/ /usr/share/icons/ 2> /dev/null
cp settings/gtk/install/gtkrc-2.0 $HOME/ 2> /dev/null
mkdir $HOME/.config/gtk-3.0 2> /dev/null
cp settings/gtk/install/settings.ini $HOME/.config/gtk-3.0/ 2> /dev/null

echo -e "\e[1;32m\n	- Installing Cursor"

# Installing New Cursor
sudo tar -xf settings/gtk/cursor/Breeze.tar.gz 2> /dev/null
sudo mv Breeze/ /usr/share/icons/ 2> /dev/null
sudo mkdir /usr/share/icons/default/ 2>/dev/null 2> /dev/null
sudo cp settings/gtk/cursor/index.theme /usr/share/icons/default/ 2> /dev/null

echo -e "\e[1;33m\n	- Installing Final Files..."

# Creating Wallpapers Directory
sudo mkdir $HOME/.wallpapers 2> /dev/null

# Installing Default Wallpaper
cp settings/start/default.jpg $HOME/.wallpapers/ 2> /dev/null

# Changing the new files owner
sudo chown -R $user:$user $HOME/.config 2> /dev/null
sudo chown -R $user:$user $HOME/.wallpapers 2> /dev/null
sudo chown -R $user:$user /usr/share/themes/Material-Black-Blueberry/ 2> /dev/null
sudo chown -R $user:$user /usr/share/icons/Material-Black-Blueberry-Suru/ 2> /dev/null
sudo chown $user:$user $HOME/gtkrc-2.0 2> /dev/null
sudo chown $user:$user /usr/share/rofi/themes/onedark.rasi 2> /dev/null
sudo chown -R $user:$user $HOME/.local 2> /dev/null

echo -e "\e[1;37mThe system needs to be rebooted"
echo -e "\e[1;37m¿Do you want to reboot your system now? [Y,n]"
read sys_reboot

if [[ $sys_reboot == [yY] ]]; then
	echo -e "\e[1;32m\nRebooting the system...\n"
	sleep 3
	reboot
else
	echo -e "\e[1;32m\nFinishing the install..."
	echo -e "\e[1;37m                "
	sleep 3
fi
