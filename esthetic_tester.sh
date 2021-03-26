#!/bin/bash

clear
echo -e "\e[1;32m  __  __              _   __        _ ____          __  _         "
echo -e "\e[1;32m / / / /__ ___ ____  | | / /__ ____(_) _(_)______ _/ /_(_)__  ___ "
echo -e "\e[1;32m/ /_/ (_-</ -_) __/  | |/ / -_) __/ / _/ / __/ _ \`/ __/ / _ \\/ _ \\"
echo -e "\e[1;32m\\____/___/\\__/_/     |___/\\__/_/ /_/_//_/\\__/\\_,_/\\__/_/\\___/_//_/"

echo -e "\e[1;33m\nPlease nter the name of the user to whom you want to"
echo -e "\e[1;33minstall the window manager with the settings\n"

echo -e "\e[1;37mUsername:"
read user

verify=$(sudo cat /etc/passwd | grep $user | cut -d ':' -f 1)

if [[ $verify == "root" ]]; then
	echo -e "\e[1;31m\nThe installer can not use Root user"

elif [[ $verify != $user ]]; then
	echo -e "\e[1;31m\nYou have entered an invalid username"
	echo -e "\e[1;31mShutting Down the Installer..."
else
	echo -e "\e[1;32m\n$user is a valid username"
fi

echo -e "\e[1;37m                  "
