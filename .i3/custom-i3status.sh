#!/bin/sh

i3status --config ~/.i3status.conf | while :
do
    read line
    pacman=`checkupdates | wc -l`
    echo "  $pacman | $line" || exit 1
done
