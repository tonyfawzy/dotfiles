export EDITOR="nvim"
export VISUAL=$EDITOR
export TERM="foot"
export TERMINAL="foot"
export BROWSER="brave"
export QT_QPA_PLATFORM=wayland
export GTK_THEME="Adwaita:dark"
export MOZ_ENABLE_WAYLAND=1
export ANKI_WAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT="wayland"
export PATH=~/.local/bin:$PATH

export GDK_SCALE=0.8
export GDK_DPI_SCALE=1.00
export QT_SCALE_FACTOR=1.0

if [ -z "$WAYLAND_DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
#	(slstatus -s | dwl) > ~/.dwl.log 2>&1
	hyprland
fi
