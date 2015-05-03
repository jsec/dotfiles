#!/bin/sh

i3status --config ~/.i3status.conf | while :
do
	read line
	mpd=$(mpc | head -n 1)
	echo " $mpd | $line" || exit 1
done
