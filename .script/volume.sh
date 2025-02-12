#!/bin/sh

arg=$1
[ $arg = "up"    ] && pactl set-sink-volume @DEFAULT_SINK@ +5%
[ $arg = "down"  ] && pactl set-sink-volume @DEFAULT_SINK@ -5%
[ $arg = "toggle" ] && pactl set-sink-mute @DEFAULT_SINK@ toggle

#pkill -RTMIN+10 slstatus
