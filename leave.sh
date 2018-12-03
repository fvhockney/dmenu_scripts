#!/bin/bash

choices="lock\nshutdown\nreboot\nexit"

LOCKSCREEN_WALLPAPER="/home/fvhockney/Wallpapers/lock-cat.png"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    shutdown) systemctl poweroff;;
    reboot) systemctl reboot;;
    exit) i3-msg exit;;
    lock) i3lock --show-failed-attempts -i "$LOCKSCREEN_WALLPAPER" --ignore-empty-password &;;
esac
