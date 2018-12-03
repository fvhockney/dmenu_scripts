#!/bin/bash

choices="laptop\nwork\nhome\nmanual"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    laptop) xrandr --output eDP1 --auto --output HDMI1 --off;;
    work) xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1 ;;
    home) xrandr --output eDP1 --auto --output HDMI1 --left-of eDP1 --mode 1280x1024;;
    manual) arandr ;;
esac
