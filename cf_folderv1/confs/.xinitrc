Setxkbmap -model abnt2 -layout br
xmodmap .xmodmap
xrdb ~/.Xresources
xrandr --dpi 126
sudo /home/manchot/.Scripts/gramconfig
dbus-update-activation-environment --systemd DISPLAY
# feh --bg-scale ~/.config/wall.jpg
exec i3
