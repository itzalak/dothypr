#!/bin/bash

killactive() {
	if pgrep -x "waybar" >/dev/null; then
		killall waybar
	fi
}

monitors=$(
	hyprctl monitors -j | jq '.[].name ' -r
)

HDMI_MONITOR="HDMI-A-1"

killactive

if [[ $monitors == *"$HDMI_MONITOR"* ]]; then
	hyprctl dispatch exec "waybar -c ~/.config/waybar/hdmi.jsonc"
	notify-send "Waybar set for HDMI monitor only"
else
	hyprctl dispatch exec waybar
fi
