#!/bin/bash

# Default ".xsession" Configuration 

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Searching the User Monitor with a Variable
userMonitor="xrandr | cut -d ' ' -f 1 | sort -u | sed '1,2d' | head -n 1"

# Start Subprocesses
setxkbmap es &
picom &
udiskie -t &
xrandr --output $userMonitor --primary --mode preferred
feh --bg-scale ~/backgrounds/Gracias.png &