#!/bin/sh

choices="speakers\nears"

chosen=$(echo -e "$choices" | dmenu -i -p "output")

case "$chosen" in 
	speakers) bluetoothctl power off ;;
	ears) bluetoothctl power on && bluetoothctl connect 14:60:CB:F0:0A:BD ;;
esac

