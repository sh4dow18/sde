#!/bin/bash

# Version 2.0

clear
echo -e "\e[1;33m		  .--.--.       ,---,        ,---,. "
echo -e "\e[1;33m		 /  /    '.   .'  .' \`\\    ,'  .' | "
echo -e "\e[1;33m		|  :  /\`. / ,---.'     \\ ,---.'   | "
echo -e "\e[1;33m		;  |  |--\`  |   |  .\`\\  ||   |   .' "
echo -e "\e[1;33m		|  :  ;_    :   : |  '  |:   :  |-, "
echo -e "\e[1;33m		 \\  \\    \`. |   ' '  ;  ::   |  ;/| "
echo -e "\e[1;33m		  \`----.   \'   | ;  .  ||   :   .' "
echo -e "\e[1;33m		  __ \\  \\  ||   | :  |  '|   |  |-, "
echo -e "\e[1;33m		 /  /\`--'  /'   : | /  ; '   :  ;/| "
echo -e "\e[1;33m		'--'.     / |   | '\` ,/  |   |    \\ "
echo -e "\e[1;33m		  \`--'---'  ;   :  .'    |   :   .' "
echo -e "\e[1;33m		            |   ,.'      |   | ,'   "
echo -e "\e[1;33m		            '---'        \`----'     "

echo -e "\e[1;32m     _____                _           _   _"
echo -e "\e[1;32m    / ____|              | |         | | | |            _" 
echo -e "\e[1;32m   | |     _ __ ___  __ _| |_ ___  __| | | |__  _   _  (_)"
echo -e "\e[1;32m   | |    | '__/ _ \\/ _\` | __/ _ \\/ _\` | | '_ \\| | | |"
echo -e "\e[1;32m   | |____| | |  __/ (_| | ||  __/ (_| | | |_) | |_| |  _" 
echo -e "\e[1;32m    \\_____|_|  \\___|\\__,_|\\__\\___|\\__,_| |_.__/ \\__, | (_)"
echo -e "\e[1;32m                                                 __/ |"
echo -e "\e[1;32m                                                |___/ "                                                                             

echo -e "\e[1;36m    ______   __      _    _          __                    __      ____    "
echo -e "\e[1;36m  .' ____ \\ [  |    | |  | |        |  ]                  /  |   .' __ '.  "
echo -e "\e[1;36m  | (___ \\_| | |--. | |__| |_   .--.| |  .--.   _   _   __\`| |   | (__) |  "
echo -e "\e[1;36m   _.____\`.  | .-. ||____   _|/ /'\`\\' |/ .'\`\\ \\[ \\ [ \\ [  ]| |   .\`____'.  "
echo -e "\e[1;36m  | \\____) | | | | |    _| |_ | \__/  || \__. | \\ \\/\\ \\/ /_| |_ | (____) | "
echo -e "\e[1;36m   \\______.'[___]|__]  |_____| '.__.;__]'.__.'   \\__/\\__/|_____|\`.______.' "

echo -e "\e[1;32m\n\n  My Github where I will Create				My Computing Spanish"
echo -e "\e[1:32m  more Tools for Different Areas			Youtube Channel:"
echo -e "\e[1;33m  https://github.com/sh4dow18				Sh4dow18 Proyect\n"
echo -e "\e[1;31m\e[1;1m\nLoading..."
sleep 7

if [[ -f /etc/X11/sde ]]; then
	echo -e "\nSh4dow's Desktop Environment is already installed\n"
	exit 0
fi

clear
echo -e "\e[1;32m   ____         __       _____             __  __        __     __        "
echo -e "\e[1;32m  /  _/__  ___ / /____ _/ / (_)__  ___ _  / / / /__  ___/ /__ _/ /____ ___"
echo -e "\e[1;32m _/ // _ \\(_-</ __/ _ \`/ / / / _ \\/ _ \`/ / /_/ / _ \\/ _  / _ \`/ __/ -_|_-<"
echo -e "\e[1;32m/___/_//_/___/\\__/\\_,_/_/_/_/_//_/\\_, /  \\____/ .__/\\_,_/\\_,_/\\__/\\__/___/"
echo -e "\e[1;32m                                 /___/       /_/                          "

echo -e "\e[1;33m\n\nLooking for System Updates...\n"
sleep 5

# Installing System Updates
sudo pacman -Syu

echo -e "\e[1;31m\e[1;1m\nLoading..."
sleep 4

clear
echo -e "\e[1;32m   ____         __       _____             ___                                 "
echo -e "\e[1;32m  /  _/__  ___ / /____ _/ / (_)__  ___ _  / _ \\_______  ___ ________ ___ _  ___"
echo -e "\e[1;32m _/ // _ \\(_-</ __/ _ \`/ / / / _ \\/ _ \`/ / ___/ __/ _ \\/ _ \`/ __/ _ \`/  ' \(_-<"
echo -e "\e[1;32m/___/_//_/___/\\__/\\_,_/_/_/_/_//_/\\_, / /_/  /_/  \\___/\\_, /_/  \\_,_/_/_/_/___/"
echo -e "\e[1;32m                                 /___/                /___/                    "

echo -e "\e[1;36m\n\nLooking for the Necessary Programs...\n"
sleep 5

# Installing Programs
sudo pacman -S --noconfirm xorg-server lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings python-pip firefox alacritty vlc zip unzip code scrot pinta qalculate-gtk rofi udiskie ntfs-3g exa fish network-manager-applet pulseaudio pavucontrol neofetch feh xorg-xrandr pacman-contrib bat
sudo pip install --no-cache-dir xcffib
sudo pip install --no-cache-dir cairocffi
sudo pip install --no-cache-dir dbus-next
sudo pip install --no-cache-dir qtile

echo -e "\e[1;31m\e[1;1m\nLoading..."
sleep 4

clear
echo -e "\e[1;32m   ____         __       _____               "                            
echo -e "\e[1;32m  /  _/__  ___ / /____ _/ / (_)__  ___ _      "                           
echo -e "\e[1;32m _/ // _ \\(_-</ __/ _ \`/ / / / _ \\/ _ \`/      "                           
echo -e "\e[1;32m/___/_//_/___/\\__/\\_,_/_/_/_/_//_/\\_, /       "                           
echo -e "\e[1;32m  _____          ____            /___/   __  _             _____ __      "
echo -e "\e[1;32m / ___/__  ___  / _(_)__ ___ _________ _/ /_(_)__  ___    / __(_) /__ ___"
echo -e "\e[1;32m/ /__/ _ \\/ _ \\/ _/ / _ \`/ // / __/ _ \`/ __/ / _ \\/ _ \\  / _// / / -_|_-<"
echo -e "\e[1;32m\\___/\\___/_//_/_//_/\\_, /\\_,_/_/  \\_,_/\\__/_/\\___/_//_/ /_/ /_/_/\\__/___/"
echo -e "\e[1;32m                   /___/                                                 "

echo -e "\e[1;36m\n\nAdding Configuration..."
sleep 5

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
sudo cp settings/lightdm/lightdm.conf /etc/lightdm/
sudo mkdir /usr/share/xsessions 2> /dev/null
sudo systemctl enable lightdm 2> /dev/null

sleep 3

echo -e "\e[1;32m\n	- Installing Qtile Configuration"

# Installing Qtile Configuration
cp -r settings/qtile $HOME/.config/
sudo cp "settings/start/Sh4dow's Desktop Environment.desktop" /usr/share/xsessions/
sudo cp settings/start/qtile /etc/X11/

sleep 3

echo -e "\e[1;33m\n	- Installing Alacritty Configuration"

# Installing Alacritty Configuration
sudo cp -r settings/alacritty $HOME/.config/

sleep 3

echo -e "\e[1;34m\n	- Installing Rofi Configuration"

# Installing Rofi Menu Configuration
sudo cp settings/rofi/onedark.rasi /usr/share/rofi/themes/
mkdir $HOME/.config/rofi
cp settings/rofi/config.rasi $HOME/.config/rofi/

sleep 3

echo -e "\e[1;35m\n	- Installing Fish Configuration"

# Changing to the "Fish" shell and Installing "Fish" Configuration
sudo chsh -s /bin/fish $user > /dev/null
mkdir $HOME/.config/fish
cp settings/fish/config.fish $HOME/.config/fish

sleep 3

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

sleep 3

echo -e "\e[1;32m\n	- Installing Cursor"

# Installing New Cursor
sudo tar -xf settings/gtk/cursor/Breeze.tar.gz 2> /dev/null
sudo mv Breeze/ /usr/share/icons/ 2> /dev/null
sudo mkdir /usr/share/icons/default/ 2>/dev/null 2> /dev/null
sudo cp settings/gtk/cursor/index.theme /usr/share/icons/default/ 2> /dev/null

sleep 3

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

# Creating File Checker
sudo echo "This file is only used to check if "Sh4dow's Desktop Environment" is installed. Please do not delete." > /etc/X11/sde

sleep 3

clear
echo -e "\e[1;32m _____           _        _ _       _   _                _____                      _      _       "
echo -e "\e[1;32m|_   _|         | |      | | |     | | (_)              / ____|                    | |    | |      "
echo -e "\e[1;32m  | |  _ __  ___| |_ __ _| | | __ _| |_ _  ___  _ __   | |     ___  _ __ ___  _ __ | | ___| |_ ___ "
echo -e "\e[1;32m  | | | '_ \\/ __| __/ _\` | | |/ _\` | __| |/ _ \\| '_ \\  | |    / _ \\| '_ \` _ \\| '_ \\| |/ _ \\ __/ _ \\"
echo -e "\e[1;32m _| |_| | | \\__ \\ || (_| | | | (_| | |_| | (_) | | | | | |___| (_) | | | | | | |_) | |  __/ ||  __/"
echo -e "\e[1;32m|_____|_| |_|___/\\__\\__,_|_|_|\\__,_|\\__|_|\\___/|_| |_|  \\_____\\___/|_| |_| |_| .__/|_|\\___|\\__\___|"
echo -e "\e[1;32m                                                                             | |                   "
echo -e "\e[1;32m                                                                             |_|                   "
echo -e "\e[1;33m                                       ..::''''::..					"
echo -e "\e[1;33m                                     .;''        \`\`;.					"
echo -e "\e[1;33m                                    ::    ::  ::    ::					"
echo -e "\e[1;33m                                   ::     ::  ::     ::					"
echo -e "\e[1;33m                                   :: .:' ::  ::  :. ::					"
echo -e "\e[1;33m                                   ::  :          :  ::					"
echo -e "\e[1;33m                                    :: \`:.      .:' ::					"
echo -e "\e[1;33m                                     \`;..\`\`::::''..;'				"
echo -e "\e[1;33m                                       \`\`::,,,,::''					"

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
