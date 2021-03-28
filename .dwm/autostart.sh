#!/bin/sh

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config ~/.config/picom/picom.conf --experimental-backends --vsync &

#bg
nitrogen --restore &
#~/.fehbg &
#wal -R
clipmenud &
dropbox &
dunst &

#[ ! -s ~/.config/mpd/pid ] && mpd &


#dwmblocks
#killall dwmblocks
#dwmblocks &


#sxhkd
sxhkd -c ~/.dwm/sxhkd/sxhkdrc &


exec slstatus
