# load Xresources
xrdb -merge ~/.Xresources

# load font cache
fc-cache -fv

# remap caps lock to control, right alt to mod
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 108 = Super_L"
xmodmap -e "remove mod1 = Super_L"

exec i3
