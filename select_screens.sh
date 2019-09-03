#!/bin/bash

choices="laptop\nwork\nhome\nmanual"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    laptop) xrandr --output eDP1 --auto --output DP3 --off && nitrogen --restore &;;
    work) xrandr --output eDP1 --auto --output DP3 --auto --right-of eDP1 && nitrogen --restore; i3-msg "exec --no-startup-id $HOME/bin/seti3layouts";;
    home) sh $HOME/.screenlayout/home.sh && nitrogen --restore &;;
    manual) arandr ;;
esac
