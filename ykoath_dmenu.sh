#!/bin/bash

# Author: Vern Hockney <fvhockney@gmail.com>
# Uses the ykman oath to generate oath codes
# from dmenu and copy them to the clipboard
# or type them

choices="$(ykman oath list)"

chosen=$(echo -e "$choices" | dmenu -i)

oauthcode=$(ykman oath code "$chosen" | awk '{print $2}')

if [ "$1" = -t ] || [ "$1" = --type ]; then
    xdotool type "$oauthcode"
else
    echo "$oauthcode" | xclip -se c
fi
