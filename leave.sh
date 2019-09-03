#!/bin/bash

choices="lock\nshutdown\nreboot\nexit"

LOCKSCREEN_WALLPAPER="$HOME/Wallpapers/lock-cat.png"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    shutdown) systemctl poweroff;;
    reboot) systemctl reboot;;
    exit) i3-msg exit;;
    lock) i3lock -kfe -B=1 &;;
esac
