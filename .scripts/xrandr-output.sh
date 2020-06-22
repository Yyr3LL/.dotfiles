#!/bin/sh

choices="laptop\nlaptopHDMI"

chosen=$(echo -e "$choices" | dmenu -i -p "output")

case "$chosen" in 
	laptop) xrandr --auto ;;
	laptopHDMI) xrandr --output HDMI-2 --above eDP-1 --auto ;;
esac

