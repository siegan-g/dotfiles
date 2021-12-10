#!/bin/bash

#change wallpaper
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual-1/workspace0/last-image -s ~/Pictures/690601.jpg
#Change icon
xfconf-query -c xsettings -p /Net/IconThemeName -s "rose-pine-icons"
#Change GTK and XFWM theme
xfconf-query -c xsettings -p /Net/ThemeName -s "rose-pine-gtk" 
xfconf-query -c xfwm4 -p /general/theme -s "rose-pine-gtk"
#change Kitty colour scheme
kitty +kitten themes Rosé Pine
#Change polybar
killall -9 polybar 
polybar darkbar

# Launch Picom 
killall -9 picom 