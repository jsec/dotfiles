#!/bin/sh

pacman=`checkupdates | wc -l`
date=`date "+%D %I:%M"`
wifi=`ip -o -4 addr show | awk -F '[ /]+' '/global/ {print $4}'`
batt=`acpi | cut -d ' ' -f4-5`
batt1=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'`
batt2=`upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2}'`

echo -e "  $pacman     $wifi     $batt1   $batt2   $date"
