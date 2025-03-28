#!/bin/sh
LOCKFILE="/tmp/neoscreenshot.lock"


notify()
{
    notify-send -t 3000 -a "grim" "$@"
}

notifyOk()
{
    TITLE="Screenshot"
    MESSAGE="Capture successful"
    notify "$TITLE" "$MESSAGE" "$@"
}

notifyError()
{
    TITLE="Screenshot"
    MESSAGE="Error taking screenshot with grim"
    notify -u critical "$TITLE" "$MESSAGE"
}

if [ -e "$LOCKFILE" ]; then
    pkill -f slurp
    notifyError
    exit 1

else 
    touch "$LOCKFILE"
fi


file=~/screenshot/$(date +%Y-%m-%d-%H%s).png
#filename=$(echo "$file" | awk -F'/' '{print $NF}')

grim -g "$(slurp)" "$file" && wl-copy --type image/png < "$file"

if [[ -f "$file" ]]; then
   rm -rf "$LOCKFILE"


   action=$(notifyOk --action=default="View" \
        -i $file)

	case "$action" in
		"default")
		 imv-wayland $file ;;
	esac

fi

rm -rf "$LOCKFILE"
