#!/bin/bash

# Version 2.0

clear
echo -e "\e[1;31m          _______  _______  _       _________ _        _______    _ "
echo -e "\e[1;31m|\\     /|(  ___  )(  ____ )( (    /|\\__   __/( (    /|(  ____ \\  ( )"
echo -e "\e[1;31m| )   ( || (   ) || (    )||  \\  ( |   ) (   |  \\  ( || (    \\/  | |"
echo -e "\e[1;31m| | _ | || (___) || (____)||   \\ | |   | |   |   \\ | || |        | |"
echo -e "\e[1;31m| |( )| ||  ___  ||     __)| (\\ \\) |   | |   | (\\ \\) || | ____   | |"
echo -e "\e[1;31m| || || || (   ) || (\\ (   | | \\   |   | |   | | \\   || | \\_  )  (_)"
echo -e "\e[1;31m| () () || )   ( || ) \\ \\__| )  \\  |___) (___| )  \\  || (___) |   _ "
echo -e "\e[1;31m(_______)|/     \\||/   \\__/|/    )_)\\_______/|/    )_)(_______)  (_)"

echo -e "\e[1;33m\nYou will run the uninstaller. Are you sure? [Y,n]"
read option

if [[ $option == [nN] ]]; then
	echo -e "\e[1;31m\nShutting down the uninstaller..."
	echo -e "\e[1;37m                       "
	sleep 3
	exit 0
fi

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
sleep 5

clear
echo -e "\e[1;32m  __  __              _   __        _ ____          __  _         "
echo -e "\e[1;32m / / / /__ ___ ____  | | / /__ ____(_) _(_)______ _/ /_(_)__  ___ "
echo -e "\e[1;32m/ /_/ (_-</ -_) __/  | |/ / -_) __/ / _/ / __/ _ \`/ __/ / _ \\/ _ \\"
echo -e "\e[1;32m\\____/___/\\__/_/     |___/\\__/_/ /_/_//_/\\__/\\_,_/\\__/_/\\___/_//_/"

echo -e "\e[1;33m\nPlease Enter the name of the user to whom you want to"
echo -e "\e[1;33muninstall the window manager with the settings\n"

echo -e "\e[1;37mUsername:"
read user

verify=$(sudo cat /etc/passwd | grep $user | cut -d ':' -f 1)

invalid_options="root bin daemon mail ftp http nobody dbus systemd-journal-remote systemd-network systemd-resolve systemd-timesync systemd-coredump uuidd polkitd git"

if [[ $invalid_options =~ (^| )$verify($| ) ]]; then
	echo -e "\e[1;31m\nThe installer can not use a pre installed user"
	echo -e "\e[1;31mShutting Down the Installer"
	echo -e "\e[1;37m		   "
	sleep 2
	exit 1

elif [[ $verify != $user ]]; then
	echo -e "\e[1;31m\nYou have entered an invalid username"
	echo -e "\e[1;31mShutting Down the Installer..."
	echo -e "\e[1;37m                  "
	sleep 2
	exit 1
else
	echo -e "\e[1;32m\n$user is a valid username"
	sleep 2
fi

echo -e "\e[1;31m\e[1;1m\nLoading..."
sleep 4

clear
echo -e "\e[1;32m   ___                        _             __  __     _          __       ____       "
echo -e "\e[1;32m  / _ \\_______ ___  ___ _____(_)__  ___ _  / / / /__  (_)__  ___ / /____ _/ / /__ ____"
echo -e "\e[1;32m / ___/ __/ -_) _ \\/ _ \`/ __/ / _ \\/ _ \`/ / /_/ / _ \\/ / _ \\(_-</ __/ _ \`/ / / -_) __/"
echo -e "\e[1;32m/_/  /_/  \\__/ .__/\\_,_/_/ /_/_//_/\\_, /  \\____/_//_/_/_//_/___/\\__/\\_,_/_/_/\\__/_/   "
echo -e "\e[1;32m            /_/                   /___/                                               "

echo -e "\e[1;33m\nPlease wait a few seconds...\n"
sleep 5

echo -e "\e[1;35m	- Removing Lightdm Configuration\n"

# Removing Lightdm Configuration
sudo systemctl disable lightdm 2>/dev/null
sudo rm -r /etc/lightdm/
sudo rm -r /usr/share/xsessions/

# Creating User Home Variable
HOME=/home/$user

sleep 3
echo -e "\e[1;36m	- Changing to the Bash shell\n"

# Changing to the "Bash" shell
sudo chsh -s /bin/bash $user > /dev/null

sleep 3
echo -e "\e[1;31m\e[1;1mLoading..."
sleep 5

clear
echo -e "\e[1;32m  __  __     _          __       _____             ___                                 "
echo -e "\e[1;32m / / / /__  (_)__  ___ / /____ _/ / (_)__  ___ _  / _ \\_______  ___ ________ ___ _  ___"
echo -e "\e[1;32m/ /_/ / _ \\/ / _ \\(_-</ __/ _ \`/ / / / _ \\/ _ \`/ / ___/ __/ _ \\/ _ \`/ __/ _ \`/  ' \(_-<"
echo -e "\e[1;32m\\____/_//_/_/_//_/___/\\__/\\_,_/_/_/_/_//_/\\_, / /_/  /_/  \\___/\\_, /_/  \\_,_/_/_/_/___/"
echo -e "\e[1;32m                                         /___/                /___/                    "

echo -e "\e[1;36m\nLooking Programs to Uninstall...\n"
sleep 5

# Uninstalling Programs

sudo pacman -Rsn xorg-server lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings python-pip firefox alacritty vlc zip unzip code scrot pinta qalculate-gtk rofi udiskie ntfs-3g exa fish network-manager-applet pulseaudio pavucontrol neofetch feh xorg-xrandr pacman-contrib bat
sudo rm /bin/qtile

echo -e "\e[1;33m\nIf you think you will use this installer again, select \"n\" to the following options"
echo -e "\e[1;33mso as not to clear the cache of the programs. If you think you will not use the"
echo -e "\e[1;33minstaller again, select \"y\" to delete it."
echo -e "\e[1;32m                 "

# Cleaning Pacman Cache
sudo pacman -Sc

sleep 3
echo -e "\e[1;31m\e[1;1m\nLoading..."
sleep 5

clear
echo -e "\e[1;32m   ___                     _                                             "
echo -e "\e[1;32m  / _ \\___ __ _  ___ _  __(_)__  ___ _                                   "
echo -e "\e[1;32m / , _/ -_)  ' \\/ _ \\ |/ / / _ \\/ _ \`/                                   "
echo -e "\e[1;32m/_/|_|\\__/_/_/_/\\___/___/_/_//_/\\_, /                                    "
echo -e "\e[1;32m  _____          ____          /___/     __  _             _____ __      "
echo -e "\e[1;32m / ___/__  ___  / _(_)__ ___ _________ _/ /_(_)__  ___    / __(_) /__ ___"
echo -e "\e[1;32m/ /__/ _ \\/ _ \\/ _/ / _ \`/ // / __/ _ \`/ __/ / _ \\/ _ \\  / _// / / -_|_-<"
echo -e "\e[1;32m\\___/\\___/_//_/_//_/\\_, /\\_,_/_/  \\_,_/\\__/_/\\___/_//_/ /_/ /_/_/\\__/___/"
echo -e "\e[1;32m                   /___/                                                 "

echo -e "\e[1;33m\nBye Bye Configuration...\n"
sleep 5

echo -e "\e[1;31m	- Removing Config and Backgrounds Directories\n"
sleep 3

echo -e "\e[1;32m	- Removing Qtile Files\n"

# Removing Config, Wallpapers Directories and Qtile Files
sudo rm -r $HOME/.config $HOME/.wallpapers $HOME/.local/share/fonts /etc/X11/qtile

sleep 3

echo -e "\e[1;34m	- Removing Rofi Theme\n"

# Removing Rofi Theme
sudo rm /usr/share/rofi/themes/onedark.rasi

sleep 3

echo -e "\e[1;35m	- Removing Black Themes and Cursor\n"

# Removing Black Theme and New Cursor
sudo rm -r /usr/share/themes/Material-Black-Blueberry/ /usr/share/icons/Material-Black-Blueberry-Suru/ $HOME/gtkrc-2.0
sudo rm -r /usr/share/icons/Breeze/

sleep 3

clear
echo -e "\e[1;32m	      _    _       _           _        _         _   _             "
echo -e "\e[1;32m	     | |  | |     (_)         | |      | | |     | | (_)            "
echo -e "\e[1;32m	     | |  | |_ __  _ _ __  ___| |_ __ _| | | __ _| |_ _  ___  _ __  "
echo -e "\e[1;32m	     | |  | | '_ \\| | '_ \\/ __| __/ _\` | | |/ _\` | __| |/ _ \\| '_ \\ "
echo -e "\e[1;32m	     | |__| | | | | | | | \\__ \\ || (_| | | | (_| | |_| | (_) | | | |"
echo -e "\e[1;32m	      \\____/|_| |_|_|_| |_|___/\\__\\__,_|_|_|\\__,_|\\__|_|\\___/|_| |_|"
echo -e "\e[1;32m	             _____                      _      _           _          "
echo -e "\e[1;32m		    / ____|                    | |    | |         | |         "
echo -e "\e[1;32m		   | |     ___  _ __ ___  _ __ | | ___| |_ ___  __| |         "
echo -e "\e[1;32m		   | |    / _ \\| '_ \` _ \\| '_ \\| |/ _ \\ __/ _ \\/ _\` |         "
echo -e "\e[1;32m		   | |___| (_) | | | | | | |_) | |  __/ ||  __/ (_| |         "
echo -e "\e[1;32m		    \\_____\\___/|_| |_| |_| .__/|_|\\___|\\__\\___|\\__,_|         "
echo -e "\e[1;32m		                         | |                                  "
echo -e "\e[1;32m		                         |_|                                  \n"

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
read rb

if [[ $rb == [yY] ]]; then
	echo -e "\e[1;32m\nRebooting the system...\n"
	sleep 3
	reboot
else
	echo -e "\e[1;32m\nFinishing the uninstall..."
	echo -e "\e[1;37m                "
	sleep 3
fi
