# load Xresources
xrdb -merge ~/.Xresources

# load font cache
fc-cache -fv

# remap caps lock to control, right alt to mod
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 108 = Super_L"
xmodmap -e "remove mod1 = Super_L"

# disable stupid tap to click
syndaemon -t -k -i 2 -d

# run redshift
#redshift -l 42.5803:83.1431 &

exec i3
