#!/bin/bash

if [[ $(xrandr | grep Virtual-1) != "" ]]; then
	xrandr --newmode "1920x1080_60.00"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
	xrandr --addmode Virtual-1 "1920x1080_60.00"
	xrandr --output Virtual-1 --primary --mode "1920x1080_60.00"
fi
picom &
udiskie -t &
nm-applet &
feh --bg-scale ~/.wallpapers/default.jpg &
