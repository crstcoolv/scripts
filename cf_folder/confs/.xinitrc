setxkbmap -model abnt2 -layout br
xmodmap .xmodmap
xrdb ~/.Xresources
xrandr --dpi 124
# sudo /home/manchot/.Scripts/gramconf
dbus-update-activation-environment --systemd DISPLAY
# feh --bg-scale ~/.config/wall.jpg
exec i3
