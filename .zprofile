if [ -z "$WAYLAND_DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  river > ~/.river.log 2>&1
  #slstatus -s | dwl > ~/.dwl.log 2>&1
fi
