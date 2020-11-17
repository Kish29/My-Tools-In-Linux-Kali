#! /bin/bash

# close extend screen linked by HDMI
status=$(xrandr | grep -i "HDMI")

if [ status != "" ];then
	xrandr --output eDP-1 --off
fi
