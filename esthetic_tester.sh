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

cat /etc/passwd | grep $user

if [[ echo $? -eq 1 ]]; then
	echo -e "\e[1;31mYou have entered an invalid user\n"
	echo -e "\e[1;31mShutting Down the Installer\n"
else:
	echo -e "\e[1;32mYour username is $user\n"
fi