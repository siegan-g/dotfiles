#!/bin/bash

#change wallpaper
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual-1/workspace0/last-image -s ~/Pictures/wallpaperflare.com_wallpaper.jpg
#Change icon
xfconf-query -c xsettings -p /Net/IconThemeName -s "rose-pine-dawn-icons"
#Change GTK and XFWM theme
xfconf-query -c xsettings -p /Net/ThemeName -s "rose-pine-dawn-gtk" 
xfconf-query -c xfwm4 -p /general/theme -s "rose-pine-dawn-gtk"
#change Kitty colour scheme
kitty +kitten themes Rosé Pine Dawn
killall -9 polybar 
polybar mybar 
# Launch Picom 
killall -9 picom 
picom -b -c --config ~/.config/picom/config 





